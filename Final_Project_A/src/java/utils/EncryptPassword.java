/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.security.MessageDigest;
import org.apache.tomcat.util.buf.MessageBytes;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 *
 * @author Asus
 */
public class EncryptPassword {
//    public static void main(String[] args) {
//        System.out.println(toSHA1("12345"));
//    }
  
    public static String toSHA1(String password) {
        String salt = "nhibeodangiu";
        String result = null;
        password = password + salt;
        try {
            byte[] dataBytes = password.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            result = Base64.encodeBase64String(md.digest(dataBytes));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
