package com.example.palmauth;

import org.json.JSONException;
import org.json.JSONObject;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Base64;

public class ImageData {
    private String id;
    private String value;
    private String message;
    public ImageData(String id, String value, String message) {
        this.id = id;
        this.value = value;
        this.message = message;
    }

    public String toJson() throws JSONException {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("id", id);
        jsonObject.put("value", value);
        jsonObject.put("message", message);
        return jsonObject.toString();
    }

    public static String encodeFileToBase64(File file) throws IOException {
        FileInputStream fis = new FileInputStream(file);
        byte[] buffer = new byte[(int) file.length()];
        fis.read(buffer);
        fis.close();
        return Base64.getEncoder().encodeToString(buffer);
    }
}
