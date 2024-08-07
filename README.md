# Palm Vein Verification SchemeUsing Deep Autoencoder and Siamese Networks

This project aims to develop a palm vein-based authenticator for devices with limited computational resources. It utilizes MediaPipe Hands to track palm points and extract the Region of Interest (ROI). An autoencoder model trained with pairs of visible and infrared spectrum images is used to highlight and enhance palm veins from a visible image. A Siamese neural network is then employed for the actual authentication. These neural networks, along with MediaPipe, run on a Raspberry Pi, and an Android app is used to capture and send photos via WebSocket to the Raspberry Pi.

## Table of Contents

- [Overview](#overview)
- [MediaPipe Integration](#mediapipe-integration)
- [Server Implementation](#server-implementation)
- [Siamese Network](#siamese-network)
- [Autoencoder Model](#autoencoder-model)
- [Android Application](#android-application)
- [Model Service](#model-service)
- [Setup](#setup)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Overview

This project is designed to perform palm vein authentication using a Raspberry Pi and an Android application. The authentication process involves the following steps:
1. Capturing the palm image using the Android app.
2. Sending the image to the Raspberry Pi via WebSocket.
3. Using MediaPipe to track palm points and extract the ROI.
4. Using an autoencoder model to highlight and enhance palm veins.
5. Using a Siamese neural network for authentication.

## MediaPipe Integration

The MediaPipe script tracks hand landmarks to extract the ROI of the palm. It processes the image to determine the center of the palm and crops the image to focus on the palm area.

## Server Implementation

The server script handles WebSocket connections and manages communication with various components, including the autoencoder and Siamese network. It processes incoming images and executes corresponding scripts based on the command received.

## Siamese Network

The Siamese network compares pairs of images to determine similarity. It uses a pre-trained model to generate embeddings for each image and compares them to verify authentication.

## Autoencoder Model

The autoencoder model enhances palm veins from a visible image. It is trained with pairs of visible and infrared spectrum images to learn how to highlight palm veins effectively.

## Android Application

The Android application captures palm images using the device's camera and sends them to the Raspberry Pi via WebSocket. It is responsible for initiating the authentication process.

### Android Java Dependencies

To use the Android application, ensure you have the following dependencies in your `build.gradle` file:

```gradle
dependencies {
    implementation("org.java-websocket:Java-WebSocket:1.5.2")
    implementation("androidx.camera:camera-core:1.0.2")
    implementation("androidx.camera:camera-camera2:1.0.2")
    implementation("androidx.camera:camera-lifecycle:1.0.2")
    implementation("androidx.camera:camera-view:1.0.0-alpha27")
}
```

## Model Service

The `model_service.py` script is used to manage and load all the necessary models once and provide endpoints for image processing and predictions. It includes:
- An `AttentionUNet` model for image enhancement, used as an autoencoder.
- A Siamese network for authentication comparison.
- REST API endpoints for predicting image enhancement and calculating image similarity.

## Setup

1. **Paths Adjustment:** Ensure that all file paths in the scripts are adjusted according to your development environment and directory structure. This includes paths to model files and any other necessary resources.

2. **Dependencies:** Create a virtual environment and install the required Python packages using the `requirements.txt` file. To do this, run:
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
    pip install -r requirements.txt
    ```

3. **Running the Services:** 
   - Start the `server.py` script to handle WebSocket connections and communication with the models.
   - Run the `model_service.py` script to manage model loading and provide the necessary endpoints.
   
   The Android application will automatically connect to the services once they are up and running.


## Authors

- Mateus Nunes
- Eduardo Viegas

