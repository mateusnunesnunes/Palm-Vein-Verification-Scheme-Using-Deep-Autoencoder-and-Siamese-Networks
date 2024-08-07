import os
import cv2
import numpy as np
import mediapipe as mp
import argparse

def calculate_triangle_center(points):
    center_x = int(np.mean([point[0] for point in points]))
    center_y = int(np.mean([point[1] for point in points]))
    center = (center_x, center_y)
    return center

def crop_square(image, top_left, bottom_right):
    result = image[top_left[1]:bottom_right[1], top_left[0]:bottom_right[0]]
    return result

def process_image_with_mediapipe(image_path, last_points, draw_debug=False):
    image = cv2.imread(image_path)
    if image is None:
        raise ValueError(f"Não foi possível carregar a imagem: {image_path}")
    
    image_rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
    
    results = hands.process(image_rgb)
    
    if results.multi_hand_landmarks:
        for hand_landmarks in results.multi_hand_landmarks:
            wrist = hand_landmarks.landmark[mp_hands.HandLandmark.WRIST]
            index_finger_mcp = hand_landmarks.landmark[mp_hands.HandLandmark.INDEX_FINGER_MCP]
            middle_finger_pip = hand_landmarks.landmark[mp_hands.HandLandmark.MIDDLE_FINGER_PIP]
            pinky_mcp = hand_landmarks.landmark[mp_hands.HandLandmark.PINKY_MCP]
            
            h, w, _ = image.shape
            
            middleCord = (int(middle_finger_pip.x * w), int(middle_finger_pip.y * h) + 30)
            
            points = [
                (int(wrist.x * w), int(wrist.y * h)),
                (int(index_finger_mcp.x * w), int(index_finger_mcp.y * h)),
                (int(pinky_mcp.x * w), int(pinky_mcp.y * h))
            ]
            
            last_points["points"] = points
            last_points["middleCord"] = middleCord
            
            break
    else:
        if last_points["points"] is None:
            raise ValueError("Nenhuma mão detectada e nenhuma detecção anterior disponível.")
        
        points = last_points["points"]
        middleCord = last_points["middleCord"]
    
    center_triangle = calculate_triangle_center(points)
    
    # Calcula os pontos extremos do triângulo e adiciona a margem de 40 pixels
    margin = 40
    min_x = max(min([p[0] for p in points]) - margin, 0)
    max_x = min(max([p[0] for p in points]) + margin, image.shape[1])
    min_y = max(min([p[1] for p in points]) - margin, 0)
    max_y = min(max([p[1] for p in points]) + margin, image.shape[0])
    
    top_left = (min_x - 180, min_y)
    bottom_right = (max_x + 180, max_y)

    
    if draw_debug:
        # Desenha as formas geométricas apenas para visualização, não na imagem salva
        cv2.rectangle(image, top_left, bottom_right, (0, 255, 0), 2)
        cv2.circle(image, center_triangle, 5, (255, 0, 0), -1)
        cv2.line(image, points[0], points[1], (0, 0, 255), 2)
        cv2.line(image, points[1], points[2], (0, 0, 255), 2)
        cv2.line(image, points[2], points[0], (0, 0, 255), 2)
    
    # Crop a imagem na área do quadrado
    cropped_image = crop_square(image, top_left, bottom_right)
    
    # Redimensiona a imagem para 224x224
    resized_image = cv2.resize(cropped_image, (224, 224))
    
    # Rotaciona a imagem redimensionada
    rotated_image = cv2.rotate(resized_image, cv2.ROTATE_90_CLOCKWISE)

    # Sobrescreve a imagem original com a imagem cortada, redimensionada e rotacionada
    cv2.imwrite(image_path, rotated_image)

mp_hands = mp.solutions.hands
hands = mp_hands.Hands(static_image_mode=True, max_num_hands=1, min_detection_confidence=0.5)

def main():
    parser = argparse.ArgumentParser(description='Processa uma imagem com MediaPipe e recorta a região de interesse.')
    parser.add_argument('image_path', type=str, help='Caminho para a imagem a ser processada')
    
    args = parser.parse_args()
    
    last_points = {"points": None, "middleCord": None}
    
    try:
        process_image_with_mediapipe(args.image_path, last_points, draw_debug=False)
        print(f"Imagem processada e salva em: {args.image_path}")
    except Exception as e:
        print(f"Erro ao processar a imagem {args.image_path}: {e}")

if __name__ == "__main__":
    main()
