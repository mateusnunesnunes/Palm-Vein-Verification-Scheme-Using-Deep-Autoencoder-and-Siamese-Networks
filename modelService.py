
# model_service.py
from flask import Flask, request, jsonify
from PIL import Image
import numpy as np
import torch
import io
from keras.models import load_model
from torchvision import transforms
from io import BytesIO
import torch.nn as nn
import base64

app = Flask(__name__)

class AttentionUNet(nn.Module):
    def __init__(self, img_ch=3, output_ch=3):
        super(AttentionUNet, self).__init__()
        self.MaxPool = nn.MaxPool2d(kernel_size=2, stride=2)
        self.Conv1 = ConvBlock(img_ch, 32)
        self.Conv2 = ConvBlock(32, 64)
        self.Up2 = UpConv(64, 32)
        self.Att2 = AttentionBlock(F_g=32, F_l=32, n_coefficients=16)
        self.UpConv2 = ConvBlock(64, 32)
        self.Conv = nn.Conv2d(32, output_ch, kernel_size=1, stride=1, padding=0)

    def forward(self, x):
        e1 = self.Conv1(x)
        e2 = self.MaxPool(e1)
        e2 = self.Conv2(e2)
        d2 = self.Up2(e2)
        s1 = self.Att2(gate=d2, skip_connection=e1)
        d2 = torch.cat((s1, d2), dim=1)
        d2 = self.UpConv2(d2)
        out = self.Conv(d2)
        return out

class ConvBlock(nn.Module):
    def __init__(self, in_channels, out_channels):
        super(ConvBlock, self).__init__()
        self.conv = nn.Sequential(
            nn.Conv2d(in_channels, out_channels, kernel_size=3, stride=1, padding=1, bias=True),
            nn.BatchNorm2d(out_channels),
            nn.ReLU(inplace=True)
        )

    def forward(self, x):
        x = self.conv(x)
        return x

class UpConv(nn.Module):
    def __init__(self, in_channels, out_channels):
        super(UpConv, self).__init__()
        self.up = nn.Sequential(
            nn.Upsample(scale_factor=2),
            nn.Conv2d(in_channels, out_channels, kernel_size=3, stride=1, padding=1, bias=True),
            nn.BatchNorm2d(out_channels),
            nn.ReLU(inplace=True)
        )

    def forward(self, x):
        x = self.up(x)
        return x

class AttentionBlock(nn.Module):
    def __init__(self, F_g, F_l, n_coefficients):
        super(AttentionBlock, self).__init__()
        self.W_gate = nn.Sequential(
            nn.Conv2d(F_g, n_coefficients, kernel_size=1, stride=1, padding=0, bias=True),
            nn.BatchNorm2d(n_coefficients)
        )
        self.W_x = nn.Sequential(
            nn.Conv2d(F_l, n_coefficients, kernel_size=1, stride=1, padding=0, bias=True),
            nn.BatchNorm2d(n_coefficients)
        )
        self.psi = nn.Sequential(
            nn.Conv2d(n_coefficients, 1, kernel_size=1, stride=1, padding=0, bias=True),
            nn.BatchNorm2d(1),
            nn.Sigmoid()
        )
        self.relu = nn.ReLU(inplace=True)

    def forward(self, gate, skip_connection):
        g1 = self.W_gate(gate)
        x1 = self.W_x(skip_connection)
        psi = self.relu(g1 + x1)
        psi = self.psi(psi)
        out = skip_connection * psi
        return out
      
def contrastive_loss(y_true, y_pred):
    margin = 1
    return K.mean(y_true * K.square(y_pred) + (1 - y_true) * K.square(K.maximum(margin - y_pred, 0)))

def euclidean_distance(vects):
    x, y = vects
    return K.sqrt(K.sum(K.square(x - y), axis=1, keepdims=True))
    
# Carregar o modelo do Autoencoder
autoencoder_model = AttentionUNet(img_ch=3, output_ch=3)        
autoencoder_model.load_state_dict(torch.load("./Modelos-AE/TC-1000-Light ", map_location=torch.device('cpu')))
autoencoder_model.eval()

# Carregar o modelo da Rede Siamese
siamese_model = load_model('./Modelos/Light-Puc-100-50%3x', custom_objects={'contrastive_loss': contrastive_loss, 'euclidean_distance': euclidean_distance})


def preprocess_image(image_bytes):
    image = Image.open(BytesIO(image_bytes)).convert("L")
    image = image.resize((60,60), Image.LANCZOS)
    image = np.array(image)
    image = image[:, :, np.newaxis]  # Adiciona a dimensão do canal
    image = image[np.newaxis, :, :, :]  # Adiciona a dimensão do lote
    image = image / 255.0  # Normaliza
    return image
   
def preprocess_imageAE(image_bytes):
    image = Image.open(BytesIO(image_bytes)).convert("RGB")
    transform = transforms.Compose([transforms.ToTensor()])
    image_tensor = transform(image).unsqueeze(0)
    return image_tensor

@app.route('/predict_autoencoder', methods=['POST'])
def predict_autoencoder():
    image_bytes = request.data
    image_tensor = preprocess_imageAE(image_bytes)
    with torch.no_grad():
        output_tensor = autoencoder_model(image_tensor)
    output_image = transforms.ToPILImage()(output_tensor.squeeze(0))
    output_bytes = io.BytesIO()
    output_image.save(output_bytes, format='JPEG')
    return output_bytes.getvalue()

@app.route('/predict_siamese', methods=['POST'])
def predict_siamese():
    print("teste")
    data = request.json
    image_bytes1 = base64.b64decode(data['image1'])
    image_bytes2 = base64.b64decode(data['image2'])
    print(f"image1 {len(image_bytes1)} image2{len(image_bytes2)}")
    image1 = preprocess_image(image_bytes1)
    image2 = preprocess_image(image_bytes2)
    distance = siamese_model.predict([image1,image2])[0][0]
    return jsonify({'distance': float(distance)})


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
    print("Model service running")
