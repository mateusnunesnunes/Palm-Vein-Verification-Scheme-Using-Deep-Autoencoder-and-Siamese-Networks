package com.example.palmauth;

import android.Manifest;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.MediaStore;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Preview;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.view.PreviewView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.google.common.util.concurrent.ListenableFuture;

import org.java_websocket.client.WebSocketClient;
import org.java_websocket.handshake.ServerHandshake;
import org.json.JSONException;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ExecutionException;


public class MainActivity extends AppCompatActivity {
    private WebSocketClient webSocketClient;
    private static final int REQUEST_CAMERA_PERMISSION = 1001;

    private TextView logTextView;
    private Button btnEnroll;
    private Button btnIdentify;
    private Button btnVerify;
    private Spinner spinnerOptions;
    private PreviewView previewView;

    private ImageCapture imageCapture;
    private ImageView imageView;

    // Adição de um EditText
    private EditText editTextInput;
    // Variável para armazenar o texto do EditText
    private String userInputText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Inicialização dos componentes do layout
        btnEnroll = findViewById(R.id.btnEnroll);
        btnIdentify = findViewById(R.id.btnIdentify);
        btnVerify = findViewById(R.id.btnVerify);
        spinnerOptions = findViewById(R.id.spinnerOptions);
        previewView = findViewById(R.id.previewView);
        imageView = findViewById(R.id.imageView);
        editTextInput = findViewById(R.id.editTextInput); // Vincula o EditText do layout
        logTextView = findViewById(R.id.logTextView);

        // Defina a imagem na ImageView programaticamente, se necessário
        imageView.setImageResource(R.drawable.hand);
        createWebSocketClient();

        btnEnroll.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "Enroll button clicked", Toast.LENGTH_SHORT).show();
                disableOtherButtons();
                capturePhoto("Enroll");
            }
        });

        btnIdentify.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "Identify button clicked", Toast.LENGTH_SHORT).show();
                disableOtherButtons();
                capturePhoto("Identify");
            }
        });

        btnVerify.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "Verify button clicked", Toast.LENGTH_SHORT).show();
                disableOtherButtons();
                capturePhoto("Verify/"+spinnerOptions.getSelectedItem().toString());
            }
        });

        // Verifica permissão da câmera
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.CAMERA}, REQUEST_CAMERA_PERMISSION);
        } else {
            startCamera();
        }

    }

    private void createWebSocketClient() {
        URI uri;
        try {
            uri = new URI("ws://192.168.100.249:8765"); // Substitua pelo IP do seu Raspberry Pi
        } catch (Exception e) {
            e.printStackTrace();
            return;
        }

        webSocketClient = new WebSocketClient(uri) {
            @Override
            public void onOpen(ServerHandshake handshakedata) {
                runOnUiThread(() -> {
                    Toast.makeText(MainActivity.this, "WebSocket Opened", Toast.LENGTH_SHORT).show();
                    logTextView.append("Connected to server\n");
                    sendCommand("getImages");
                });
            }

            @Override
            public void onMessage(String s) {
                runOnUiThread(() -> {
                    Toast.makeText(MainActivity.this, "RECEIVED: " + s, Toast.LENGTH_SHORT).show();
                    logTextView.append(s + "\n");
                    if (s.startsWith("getImagesResponse/")) {
                        String imageNamesString = s.substring("getImagesResponse/".length());
                        Toast.makeText(MainActivity.this, "Received: " + imageNamesString, Toast.LENGTH_SHORT).show();
                        String[] imageNames = imageNamesString.split("/");
                        ArrayList<String> directoryNames = new ArrayList<>();
                        for (String imageName : imageNames) {
                            directoryNames.add(imageName);
                        }
                        ArrayAdapter<String> adapter = new ArrayAdapter<>(MainActivity.this,
                                android.R.layout.simple_spinner_item, directoryNames);
                        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                        spinnerOptions.setAdapter(adapter);
                        adapter.notifyDataSetChanged();
                    } else if (s.startsWith("ReceivedImages/")) {
                        //Toast.makeText(MainActivity.this, s, Toast.LENGTH_SHORT).show();
                        sendCommand("getImages");
                    }
                });
            }

            @Override
            public void onClose(int i, String s, boolean b) {
                runOnUiThread(() -> {
                            Toast.makeText(MainActivity.this, "WebSocket Closed", Toast.LENGTH_SHORT).show();
                            logTextView.append("Connection closed\n");
                }
                );
            }

            @Override
            public void onError(Exception e) {
                runOnUiThread(() -> {
                    Toast.makeText(MainActivity.this, "WebSocket Error: " + e.getMessage(), Toast.LENGTH_SHORT).show();
                    logTextView.append("Error: " + e.getMessage() + "\n");
                });
            }
        };

        webSocketClient.connect();
    }

    private void sendCommand(String command) {
        if (webSocketClient != null && webSocketClient.isOpen()) {
            webSocketClient.send(command);
        } else {
            Toast.makeText(this, "WebSocket is not connected", Toast.LENGTH_SHORT).show();
        }
    }

    //capturePhoto para mandar para o rasp
    private void capturePhoto(String message) {
        if (imageCapture != null) {
            File photoFile = createImageFile();
            ImageCapture.OutputFileOptions outputFileOptions =
                    new ImageCapture.OutputFileOptions.Builder(photoFile).build();

            imageCapture.takePicture(outputFileOptions, ContextCompat.getMainExecutor(this),
                    new ImageCapture.OnImageSavedCallback() {
                        @Override
                        public void onImageSaved(@Nullable ImageCapture.OutputFileResults outputFileResults) {
                            // Imagem salva com sucesso
                            //Toast.makeText(MainActivity.this, "Photo saved successfully", Toast.LENGTH_SHORT).show();

                            // Enviar a imagem para o servidor WebSocket
                            // Exemplo de como acessar o texto do EditText
                            userInputText = editTextInput.getText().toString();
                            String imageName = editTextInput.getText().toString().trim(); // Obtém o texto do EditText

                            Bitmap bitmap = BitmapFactory.decodeFile(photoFile.getAbsolutePath());
                            Bitmap resizedBitmap = resizeBitmap(bitmap, 0.5f); // Redimensiona a imagem para 50%

                            File resizedFile = saveBitmapToFile(resizedBitmap, photoFile);
                            sendImage(resizedFile, imageName,  message);
                        }

                        @Override
                        public void onError(@Nullable ImageCaptureException exception) {
                            // Erro ao salvar a imagem
                            Toast.makeText(MainActivity.this, "Failed to save photo", Toast.LENGTH_SHORT).show();
                            exception.printStackTrace();
                        }
                    });
        } else {
            Toast.makeText(MainActivity.this, "Camera is not ready yet", Toast.LENGTH_SHORT).show();
            startCamera(); // Tentar inicializar a câmera novamente
        }
    }

    private File saveBitmapToFile(Bitmap bitmap, File originalFile) {
        File resizedFile = new File(originalFile.getParent(), "resized_" + originalFile.getName());
        try (FileOutputStream out = new FileOutputStream(resizedFile)) {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, out);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return resizedFile;
    }

    private Bitmap resizeBitmap(Bitmap original, float scale) {
        int width = (int) (original.getWidth() * scale);
        int height = (int) (original.getHeight() * scale);
        Bitmap resizedBitmap = Bitmap.createScaledBitmap(original, width, height, true);
        return rotateBitmap(resizedBitmap, -90); // Girar 90 graus para orientação vertical
    }

    private Bitmap rotateBitmap(Bitmap bitmap, int degrees) {
        Matrix matrix = new Matrix();
        matrix.postRotate(degrees);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private void sendImage(File photoFile, String textEditValue, String message) {

        ArrayAdapter<String> adapter = (ArrayAdapter<String>) spinnerOptions.getAdapter();
        if (adapter != null) {
            for (int i = 0; i < adapter.getCount(); i++) {
                if (adapter.getItem(i).equals(textEditValue)) {
                    runOnUiThread(() -> {
                        Toast.makeText(MainActivity.this, "ID already exists", Toast.LENGTH_SHORT).show();
                        editTextInput.setError("ID already exists");
                    });
                    return;
                }
            }
        }
        if (textEditValue.isEmpty()) {
            Toast.makeText(MainActivity.this, "Please enter an ID", Toast.LENGTH_SHORT).show();
            editTextInput.setError("ID vazio");
        }
        else{
            editTextInput.setError(null);
            new Thread(() -> {
                try {
                    String timestamp = new SimpleDateFormat("dd-MM-yyyy_HH:mm:ss", Locale.getDefault()).format(System.currentTimeMillis());
                    String id = textEditValue + "_" + timestamp;
                    String encodedImage = ImageData.encodeFileToBase64(photoFile);
                    ImageData imageData = new ImageData(id, encodedImage, message);
                    String jsonPayload = imageData.toJson();
                    if (webSocketClient != null && webSocketClient.isOpen()) {
                        webSocketClient.send(jsonPayload);
                    } else {
                        runOnUiThread(() -> Toast.makeText(MainActivity.this, "WebSocket is not connected", Toast.LENGTH_SHORT).show());
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    System.out.println("Error: "+e);
                } catch (JSONException e) {
                    System.out.println("Error "+e);
                    throw new RuntimeException(e);
                }
            }).start();
        }


    }



    //capturePhoto para salvar na galeria
//    private void capturePhoto() {
//        if (imageCapture != null) {
//            File photoFile = createImageFile();
//            ImageCapture.OutputFileOptions outputFileOptions =
//                    new ImageCapture.OutputFileOptions.Builder(photoFile).build();
//
//            imageCapture.takePicture(outputFileOptions, ContextCompat.getMainExecutor(this),
//                    new ImageCapture.OnImageSavedCallback() {
//                        @Override
//                        public void onImageSaved(@Nullable ImageCapture.OutputFileResults outputFileResults) {
//                            // Imagem salva com sucesso
//                            Toast.makeText(MainActivity.this, "Photo saved successfully", Toast.LENGTH_SHORT).show();
//
//                            // Adicionar a imagem à galeria usando MediaStore
//                            ContentValues contentValues = new ContentValues();
//                            contentValues.put(MediaStore.Images.Media.DISPLAY_NAME, photoFile.getName());
//                            contentValues.put(MediaStore.Images.Media.MIME_TYPE, "image/jpeg");
//                            contentValues.put(MediaStore.Images.Media.DATE_ADDED, System.currentTimeMillis() / 1000);
//                            contentValues.put(MediaStore.Images.Media.DATE_TAKEN, System.currentTimeMillis());
//
//                            ContentResolver contentResolver = getContentResolver();
//                            Uri imageUri = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
//
//                            if (imageUri != null) {
//                                try {
//                                    // Abre um OutputStream para a URI da imagem para escrever os dados da imagem
//                                    OutputStream outputStream = contentResolver.openOutputStream(imageUri);
//
//                                    // Se outputStream for válido, copie o arquivo de imagem para o OutputStream
//                                    if (outputStream != null) {
//                                        FileInputStream inputStream = new FileInputStream(photoFile);
//                                        byte[] buffer = new byte[1024];
//                                        int bytesRead;
//                                        while ((bytesRead = inputStream.read(buffer)) != -1) {
//                                            outputStream.write(buffer, 0, bytesRead);
//                                        }
//                                        inputStream.close();
//                                        outputStream.close();
//
//                                        // Imagem foi adicionada com sucesso à galeria
//                                        Toast.makeText(MainActivity.this, "Photo added to gallery", Toast.LENGTH_SHORT).show();
//                                    } else {
//                                        Toast.makeText(MainActivity.this, "Failed to save photo to gallery", Toast.LENGTH_SHORT).show();
//                                    }
//                                } catch (IOException e) {
//                                    e.printStackTrace();
//                                    Toast.makeText(MainActivity.this, "Failed to save photo to gallery", Toast.LENGTH_SHORT).show();
//                                }
//                            } else {
//                                Toast.makeText(MainActivity.this, "Failed to save photo to gallery", Toast.LENGTH_SHORT).show();
//                            }
//                        }
//
//                        @Override
//                        public void onError(@Nullable ImageCaptureException exception) {
//                            // Erro ao salvar a imagem
//                            Toast.makeText(MainActivity.this, "Failed to save photo", Toast.LENGTH_SHORT).show();
//                            exception.printStackTrace();
//                        }
//                    });
//        } else {
//            Toast.makeText(MainActivity.this, "Camera is not ready yet", Toast.LENGTH_SHORT).show();
//            startCamera(); // Tentar inicializar a câmera novamente
//        }
//    }

    private File createImageFile() {
        String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(System.currentTimeMillis());
        String imageFileName = "JPEG_" + timeStamp + "_";
        File storageDir = getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        File imageFile = null;
        try {
            imageFile = File.createTempFile(imageFileName, ".jpg", storageDir);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return imageFile;
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQUEST_CAMERA_PERMISSION) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                startCamera();
            } else {
                Toast.makeText(this, "Camera permission is required to use the camera.", Toast.LENGTH_SHORT).show();
            }
        }
    }

    private void disableOtherButtons() {
        final Button[] buttons = {btnEnroll, btnIdentify, btnVerify};
        for (Button button : buttons) {
            button.setEnabled(false);
            button.setAlpha(0.5f);
        }

        // Re-enable the buttons after 5 seconds
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                for (Button button : buttons) {
                    button.setEnabled(true);
                    button.setAlpha(1.0f);

                }
            }
        }, 7000);
    }

    private void startCamera() {
        ListenableFuture<ProcessCameraProvider> cameraProviderFuture = ProcessCameraProvider.getInstance(this);

        cameraProviderFuture.addListener(() -> {
            try {
                ProcessCameraProvider cameraProvider = cameraProviderFuture.get();
                bindPreview(cameraProvider);
            } catch (ExecutionException | InterruptedException e) {
                e.printStackTrace();
            }
        }, ContextCompat.getMainExecutor(this));
    }

    private void bindPreview(@NonNull ProcessCameraProvider cameraProvider) {
        Preview preview = new Preview.Builder().build();

        CameraSelector cameraSelector = new CameraSelector.Builder()
                .requireLensFacing(CameraSelector.LENS_FACING_FRONT)
                .build();

        preview.setSurfaceProvider(previewView.getSurfaceProvider());

        ImageCapture.Builder builder = new ImageCapture.Builder()
                .setTargetRotation(previewView.getDisplay().getRotation());

        imageCapture = builder.build();

        cameraProvider.unbindAll();
        cameraProvider.bindToLifecycle(this, cameraSelector, preview, imageCapture);
    }
}

