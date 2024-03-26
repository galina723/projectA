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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;
import model.Order;

/**
 *
 * @author Asus
 */
public class OrderDAO {

    private static String filename_char = "OrderList.txt";
    private static String pathStr = "C:\\Netbeans_Project\\Final_Project_A\\Final_Project_A\\Data";

    public OrderDAO() {
        File folder = new File(pathStr);
        File fileSave = new File(pathStr + "//" + filename_char);
        if (!(folder.exists())) {
            folder.mkdirs();
        }
        if (!(fileSave.exists())) {
            try {
                fileSave.createNewFile();
            } catch (IOException ex) {
                Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public static void saveOrderList(ArrayList<Order> OrderList) {
        File fileChar = new File(pathStr + "//" + filename_char);
        PrintWriter pw = null;
        try {
            pw = new PrintWriter(fileChar);
            for (int i = 0; i < OrderList.size(); i++) {
                pw.println(OrderList.get(i).getID());
                pw.println(OrderList.get(i).getDate());
                pw.println(OrderList.get(i).getStatus());
                pw.println(OrderList.get(i).getUserName());
                pw.println(OrderList.get(i).getAddress());
                pw.println(OrderList.get(i).getPhone());
                pw.println(OrderList.get(i).getTotalQuantity());
                pw.println(OrderList.get(i).getTotalPayment());
                pw.flush();
            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(UserDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            pw.close();
        }
    }

    public static ArrayList<Order> restore_OrderList() {
        ArrayList<Order> orderList = new ArrayList<Order>();
        BufferedReader br = null;
        try {
            String filename = pathStr + "\\" + filename_char;
            String line = "";

            br = new BufferedReader(new FileReader(filename));
            while ((line = br.readLine()) != null) {
                String ID = line;
                String date = br.readLine();
                String status = br.readLine();
                String userName = br.readLine();
                String address = br.readLine();
                String phone = br.readLine();
                String totalQuantity = (br.readLine());
                String totalPayment = (br.readLine());
                Order order = new Order(ID, date, userName, address, phone, totalQuantity, totalPayment);
                order.setStatus(status);
                orderList.add(order);

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
        return orderList;
    }

}
