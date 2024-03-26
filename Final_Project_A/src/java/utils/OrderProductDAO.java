/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import model.OrderProduct;
import model.OrderProductIn;
import model.OrderProductIn;

/**
 *
 * @author ADMIN
 */
public class OrderProductDAO {

    private static String filename_char = "OrderProduct.txt";
    private static String pathStr = "C:\\Netbeans_Project\\Final_Project_A\\Final_Project_A\\Data";

    public static void saveOrderListProductByChar(ArrayList<OrderProduct> orderProduct) {
        File fileChar = new File(pathStr + "//" + filename_char);
        PrintWriter pw = null;
        try {
            pw = new PrintWriter(fileChar);
            for (int i = 0; i < orderProduct.size(); i++) {
                pw.println(orderProduct.get(i).getID());
                List<OrderProductIn> orderPr = orderProduct.get(i).getOrderPro();
                for (OrderProductIn product : orderPr) {
                    pw.println(product.getProduct()+ "*" + product.getAmount());
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

    public static ArrayList<OrderProduct> restoreOrderProduct() {
        BufferedReader br = null;
        List<OrderProduct> listOrderPro = new ArrayList<>();
        try {
            String line = "";
            br = new BufferedReader(new FileReader(pathStr + "\\" + filename_char));
            while ((line = br.readLine()) != null) {
                String id = line;
                OrderProduct orderProdu = new OrderProduct(id);
                while (!(line = br.readLine()).equals("$")) {
                    String[] productIn = line.split("\\*");
                    String name = productIn[0];
                    String amount = productIn[1];
                    OrderProductIn Orderproduct = new OrderProductIn(name, amount);
                    orderProdu.addOr(Orderproduct);
                }
                listOrderPro.add(orderProdu);
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

        return (ArrayList<OrderProduct>) listOrderPro;

    }
}
