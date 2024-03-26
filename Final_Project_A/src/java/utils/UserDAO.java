/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.io.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;
import model.Product;

/**
 *
 * @author ADMIN
 */
public class UserDAO {

    private static String pathSRC = "C:\\Netbeans_Project\\Final_Project_A\\Final_Project_A\\Data";
    private static String filePath = "UserData.txt";

    public UserDAO() {
        File folder = new File(pathSRC);
        File fileSave = new File(pathSRC + "//" + filePath);
        if (!(folder.exists())) {
            folder.mkdirs();
        }
        if (!(fileSave.exists())) {
            try {
                fileSave.createNewFile();
            } catch (IOException ex) {
                Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public static void saveUserListBy_Char(ArrayList<User> UserList) {
        File fileChar = new File(pathSRC + "//" + filePath);
        PrintWriter pw = null;
        try {
            pw = new PrintWriter(fileChar);
            for (int i = 0; i < UserList.size(); i++) {
                pw.println(UserList.get(i).getName());
                pw.println(UserList.get(i).getEmail());
                pw.println(UserList.get(i).getPassword());
                pw.println(UserList.get(i).getStatus());
                pw.flush();
            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(UserDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            pw.close();
        }
    }

    public static ArrayList<User> reStoreUserFromFile() {
        ArrayList<User> userList = new ArrayList<User>();
        BufferedReader br = null;
        try {
            String filename = pathSRC + "\\" + filePath;
            String line = "";

            br = new BufferedReader(new FileReader(filename));
            while ((line = br.readLine()) != null) {
                String name = line;
                String email = br.readLine();
                String password = br.readLine();
                String status = br.readLine();
                User user = new User(name, email, password, status);
                user.setStatus(status);
                userList.add(user);

            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(UserDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IOException ex) {
            java.util.logging.Logger.getLogger(UserDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            try {
                br.close();
            } catch (IOException ex) {
                java.util.logging.Logger.getLogger(UserDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
        }
        return userList;
    }

    public static ArrayList<Product> reStore_ShoppingList_Of_User(String userName) {
        List<Product> productList = new ArrayList<Product>();
        BufferedReader br = null;
        try {
            String filename = pathSRC + "\\" + filePath;
            String line = "";

            br = new BufferedReader(new FileReader(filename));
            while ((line = br.readLine()) != null) {
                String username = line;
                if (username.equals(userName)) {
                    String email = br.readLine();
                    String password = br.readLine();
                    String line2 = br.readLine();
                    while (line2 != null) {
                        String ID = line;
                        String productName = br.readLine();
                        String price = br.readLine();
                        String quantity = br.readLine();
                        String material = br.readLine();
                        String status = br.readLine();
                        String pathIMG = br.readLine();
                        Product product = new Product(ID,productName, price, quantity, material, status, pathIMG);
                        productList.add(product);
                    }
                }
            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(UserDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IOException ex) {
            java.util.logging.Logger.getLogger(UserDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            try {
                br.close();
            } catch (IOException ex) {
                java.util.logging.Logger.getLogger(UserDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
        }
        return (ArrayList<Product>) productList;
    }

}
