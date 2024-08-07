import asyncio
import websockets
import os
import json
import base64

connected_clients = set()
RECEIVED_IMAGES_DIR = "ReceivedImages"  # Pasta para salvar as imagens recebidas


async def handler(websocket, path):
    connected_clients.add(websocket)
    try:
        async for message in websocket:
            try:
                data = json.loads(message)
                id_parts = data['id'].split('_')
                id_folder = id_parts[0]
                image_filename = f"{id_parts[-1]}.jpg"
                message = data['message']
                save_dir = os.path.join(RECEIVED_IMAGES_DIR, id_folder)
                image_path = os.path.join(save_dir, image_filename)
    
                if 'id' in data and 'value' and 'message' in data:
                    print(f"Received an image with ID: {data['id']} Message: {message}")
                    await saveImage(data)
                    
                    if message == 'Enroll':
                        await execute_and_send_message(websocket, "mpPhoto.py", image_path)
                        await execute_and_send_message(websocket, "autoencoder.py", image_path)
                    elif message == 'Identify':
                        await execute_and_send_message(websocket, "mpPhoto.py", image_path)
                        await execute_and_send_message(websocket, "autoencoder.py", image_path)
                        await execute_and_send_message(websocket, "siamese.py", image_path, "ReceivedImages")
                    elif message.split('/')[0] == 'Verify':
                        await execute_and_send_message(websocket, "mpPhoto.py", image_path)
                        await execute_and_send_message(websocket, "autoencoder.py", image_path)
                        await execute_and_send_message(websocket, "siamese.py", image_path, f"ReceivedImages/{message.split('/')[1]}")
                else:
                    raise ValueError("Invalid JSON format or command")
            except json.JSONDecodeError:
                if message == "getImages":
                    items = await get_received_items()
                    response = f"getImagesResponse/{'/'.join(items['items'])}"
                    await websocket.send(response)
    except websockets.ConnectionClosed:
        print("Connection closed")
    finally:
        connected_clients.remove(websocket)

async def execute_and_send_message(websocket, script_name, image_path, dir_path=None):
    try:
        if script_name == "siamese.py" and dir_path is not None:
            print(f"Executing script: {script_name} with image: {image_path} and directory: {dir_path}")
            process = await asyncio.create_subprocess_exec(
                "python3", script_name, image_path, dir_path,
                stdout=asyncio.subprocess.PIPE,
                stderr=asyncio.subprocess.PIPE
            )
        else:
            print(f"Executing script: {script_name} with image: {image_path}")
            process = await asyncio.create_subprocess_exec(
                "python3", script_name, image_path,
                stdout=asyncio.subprocess.PIPE,
                stderr=asyncio.subprocess.PIPE
            )
        
        stdout, stderr = await process.communicate()
        
        # Captura e envia a saída padrão do script
        stdout_output = stdout.decode().strip()
        if stdout_output:
            print(f"[{script_name}] Output: {stdout_output}")
            await websocket.send(json.dumps({"type": "stdout", "script": script_name, "output": stdout_output}))

        # Captura e envia a saída de erro do script, se houver
        stderr_output = stderr.decode().strip()
        if stderr_output:
            print(f"[{script_name}] Error: {stderr_output}")
            await websocket.send(json.dumps({"type": "stderr", "script": script_name, "output": stderr_output}))

    except Exception as e:
        error_message = f"Failed to run script {script_name}: {str(e)}"
        print(error_message)
        await websocket.send(json.dumps({"type": "error", "script": script_name, "output": error_message}))

async def get_received_items():
    try:
        items = []
        for item in os.listdir(RECEIVED_IMAGES_DIR):
            if os.path.isdir(os.path.join(RECEIVED_IMAGES_DIR, item)):
                items.append(item)
        return {"items": items}

    except Exception as e:
        print(f"Failed to get items from directory: {str(e)}")
        return {"items": []}

async def saveImage(data):
    # Extrair os dados da imagem
    image_data = base64.b64decode(data['value'])

    # Separar o ID do timestamp se estiver combinado
    id_parts = data['id'].split('_')
    id_folder = id_parts[0]
    image_filename = f"{id_parts[-1]}.jpg"
    message = data['message']
    # Criar o caminho do diretório para o ID
    save_dir = os.path.join(RECEIVED_IMAGES_DIR, id_folder)
    os.makedirs(save_dir, exist_ok=True)

    # Salvar a imagem no caminho especificado
    image_path = os.path.join(save_dir, image_filename)
    with open(image_path, "wb") as f:
        f.write(image_data)
    print(f"Received Image of length {len(image_data)} with ID: {data['id']} Message: {message}")
    print(f"Received and saved image: {image_path}")
    
    
    
async def main():
    ip = '0.0.0.0'
    port = 8765
    max_size = 10 * 1024 * 1024  # 10 MB
    print(f"Starting server on {ip}:{port} with max size {max_size} bytes")
    async with websockets.serve(handler, ip, port, max_size=max_size):
        await asyncio.Future()  # Run forever

if __name__ == "__main__":
    asyncio.run(main())
