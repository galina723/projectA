/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.ArrayList;
import java.util.List;
import model.Order;

/**
 *
 * @author Asus
 */
public class OrderManager {
    
   public static  ArrayList <Order> orderList = OrderDAO.restore_OrderList();

    public static ArrayList<Order> getOrderList() {
        return orderList;
    }

    public static void setOrderList(ArrayList<Order> orderList) {
        OrderManager.orderList = orderList;
    }
   
    public static boolean addOrder(Order order){
        for (Order order1 : orderList) {
            if(order1.getID().equals(order.getID())){
                return false;
            }
        }
        orderList.add(order);
        return true;
    }
    public Order findorderbyNumOrder(String numOrder) {
        for (int i = 0; i < orderList.size(); i++) {
            if (orderList.get(i).getID().equals(numOrder)) {
                return orderList.get(i);
            }
        }
        return null;
    }

    public boolean DeleteOrder(String numOrder) {
        Order temp = findorderbyNumOrder(numOrder);
        if (temp != null) {
            orderList.remove(temp);
            return true;
        }
        return false;
    }
    
    public boolean ChangeStatusOrder(String numOrder) {
       for(int i = 0; i < orderList.size(); i++){
            if(orderList.get(i).getID().equals(numOrder)){
                Order order = orderList.get(i);
                order.setStatus("Delivered");
                orderList.set(i, order);
                OrderDAO.saveOrderList(orderList);
                return true;
            }
        }
       
        return false;
    }
}
