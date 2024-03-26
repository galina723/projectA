/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.Product;
import model.ProductInCart;
import model.User;
import model.UserCart;

/**
 *
 * @author Asus
 */
public class UserCartDAO {

    private static String filename_char = "MapProduct.txt";
    private static String pathStr = "C:\\Netbeans_Project\\Final_Project_A\\Final_Project_A\\Data";

    public UserCartDAO() {
        File file = new File(pathStr + "//" + filename_char);
        if (file.exists()) {

        } else {
            File folder = new File(pathStr);
            folder.mkdirs();
            try {
                file.createNewFile();
            } catch (IOException ex) {
            }
        }
        File file2 = new File(pathStr + "//" + filename_char);
        if (file2.exists()) {

        } else {
            File folder = new File(pathStr);
            folder.mkdirs();
            try {
                file2.createNewFile();
            } catch (IOException ex) {
            }
        }
    }

    public static ArrayList<UserCart> restore_ListUserCart() {
        BufferedReader br = null;
        List<UserCart> listUserCart = new ArrayList<>();
        try {
            String line = "";
            br = new BufferedReader(new FileReader(pathStr + "//" + filename_char));
            while ((line = br.readLine()) != null) {
                String username = line;
                System.out.println(username);
                UserCart userCart = new UserCart(username);
                String line2;
                while (!(line2 = br.readLine()).equals("$")) {
                    String oneProduct = line2;
                    String[] productInfo = oneProduct.split("\\*");
                    String ID = productInfo[0];
                    String productName = productInfo[1];
                    System.out.println(productName);
                    String pathIMG = productInfo[2];
                    int price = Integer.parseInt(productInfo[3]);
                    int quantity = Integer.parseInt(productInfo[4]);
                    int totalPrice = Integer.parseInt(productInfo[5]);
                    ProductInCart product = new ProductInCart(ID, productName, pathIMG, price);
                    product.setQuantity(quantity);
                    product.setTotalPrice(totalPrice);
                    userCart.addProducttoCart(product);
                }
                listUserCart.add(userCart);
                System.out.println("user moi start");
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

        return (ArrayList<UserCart>) listUserCart;

    }

    public static void saveUserCartListBy_Char(ArrayList<UserCart> UserCartList) {
        File fileChar = new File(pathStr + "//" + filename_char);
        PrintWriter pw = null;
        try {
            pw = new PrintWriter(fileChar);
            for (int i = 0; i < UserCartList.size(); i++) {
                pw.println(UserCartList.get(i).getUserName());
                List<ProductInCart> userCart = UserCartList.get(i).getUserCart();
                for (ProductInCart product : userCart) {
                    pw.println(product.getID() + "*" + product.getProductName() + "*" + product.getPathIMG() + "*" + product.getPrice() + "*" + product.getQuantity() + "*" + product.calculateTotalPrice());
                }
                pw.println("$");
                pw.flush();
            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(UserDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            pw.close();
        }
    }
}
