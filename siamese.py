
import requests
from PIL import Image
import numpy as np
import os
import argparse
import time
import io
import base64

def preprocess_image(image_path):
    # Lê a imagem e converte para bytes
    with open(image_path, 'rb') as img_file:
        image_bytes = img_file.read()
    return image_bytes

def compare_images(image_path1, image_path2, service_url):
    # Pré-processa as imagens
    img1_bytes = preprocess_image(image_path1)
    img2_bytes = preprocess_image(image_path2)
    
    # Converte as imagens para base64
    img1_b64 = base64.b64encode(img1_bytes).decode('utf-8')
    img2_b64 = base64.b64encode(img2_bytes).decode('utf-8')

    # Envia as imagens para o serviço
    print(f"Enviando imagens para o serviço: {service_url}")

    # Cria o payload com as imagens no formato JSON
    payload = {
        'image1': img1_b64,  
        'image2': img2_b64
    }
    headers = {'Content-Type': 'application/json'}
    start_time = time.time()
    response = requests.post(service_url, json=payload, headers=headers)
    end_time = time.time()
    print(f"Distância euclidiana entre {image_path1} e {image_path2}")
        
    if response.status_code == 200:
        # Recebe a distância e o tempo de comparação
        data = response.json()
        distance = data.get('distance', 'N/A')
        comparison_time = end_time - start_time
        print(f"Distância euclidiana entre {image_path1} e {image_path2}: {distance:.2f}")
        print(f"Tempo de comparação: {comparison_time:.4f} segundos")
        return comparison_time
    else:
        print(f"Erro na solicitação ao serviço. Código de status: {response.status_code}")
        return None

def process_images(image_path1, images_folder, service_url):
    # Itera sobre todas as imagens na pasta
    comparison_times = []
    for root, dirs, files in os.walk(images_folder):
        for file in files:
            if file.lower().endswith(('.png', '.jpg', '.jpeg', '.pgm')):
                image_path2 = os.path.join(root, file)
                comparison_time = compare_images(image_path1, image_path2, service_url)
                if comparison_time is not None:
                    comparison_times.append(comparison_time)
    
    if len(comparison_times) > 1:
        average_time = np.mean(comparison_times)
        print(f"Média de tempo de comparação: {average_time:.4f} segundos")

def main(image_path1, images_folder):
    # URL do serviço que realiza a comparação
    service_url = 'http://localhost:5000/predict_siamese'  # Altere para a URL do seu serviço
    
    # Verifique se o caminho da primeira imagem existe e é acessível
    if os.path.exists(image_path1):
        if os.path.isdir(images_folder):
            process_images(image_path1, images_folder, service_url)
        elif os.path.isfile(images_folder):
            # Se o segundo argumento for um único arquivo
            if os.path.exists(images_folder):
                compare_images(image_path1, images_folder, service_url)
            else:
                raise FileNotFoundError(f"A imagem ou pasta fornecida não existe: {images_folder}")
        else:
            raise FileNotFoundError(f"O caminho fornecido não é uma pasta nem um arquivo válido: {images_folder}")
    else:
        raise FileNotFoundError(f"A primeira imagem não foi encontrada: {image_path1}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Compare uma imagem com imagens em uma pasta usando um serviço de modelo.")
    parser.add_argument('image_path1', type=str, help="Caminho para a primeira imagem.")
    parser.add_argument('images_folder', type=str, help="Caminho para a pasta com as imagens a serem comparadas.")
    
    args = parser.parse_args()
    
    main(args.image_path1, args.images_folder)
