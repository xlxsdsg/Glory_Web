package com.Glory.passwordTool;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public class SHA256 {
    public String byteToHex(byte[] bytes){
        StringBuilder password = new StringBuilder();
        String temp;
        for (byte i:bytes){
            temp = Integer.toHexString(i & 0xFF);
            if (temp.length()==1){
                password.append("0");
            }
            password.append(temp);
        }
        return password.toString();
    }
    public String GetSHA256Str(String str){
        MessageDigest messageDigest;
        String encodeStr=null;
        try {
            messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes(StandardCharsets.UTF_8));
            encodeStr = byteToHex(messageDigest.digest());
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return encodeStr;
    }
}
