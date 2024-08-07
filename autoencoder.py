
import requests
from PIL import Image
import io
import sys
import time

def main(input_image_path):
    start_time = time.time()
    
    print(f"Carregando imagem de entrada: {input_image_path}")

    # Ler a imagem e converter para bytes
    with open(input_image_path, 'rb') as img_file:
        image_bytes = img_file.read()

    # Enviar a imagem para o serviço de modelo
    url = 'http://localhost:5000/predict_autoencoder'
    print(f"Enviando imagem para o serviço de modelo: {url}")

    response = requests.post(url, data=image_bytes)
    
    if response.status_code == 200:
        # Salvar a imagem recebida do serviço
        output_image_path = input_image_path
        with open(output_image_path, 'wb') as out_file:
            out_file.write(response.content)
        
        print(f"Processamento concluído. Imagem de saída salva em: {output_image_path}")
    else:
        print(f"Erro na solicitação ao serviço de modelo. Código de status: {response.status_code}")

    end_time = time.time()
    execution_time = end_time - start_time
    print(f"Tempo de execução: {execution_time:.2f} segundos")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Uso: python autoencoder.py <caminho_da_imagem>")
    else:
        print("Autoencoder running")
        input_image_path = sys.argv[1]
        main(input_image_path)
