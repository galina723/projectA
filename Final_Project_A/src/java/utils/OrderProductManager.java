/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.ArrayList;
import model.OrderProduct;
import model.OrderProductIn;
/**
 *
 * @author ADMIN
 */
public class OrderProductManager {
    
    public static ArrayList<OrderProduct> orderProduct = OrderProductDAO.restoreOrderProduct();
    
     public static void addNewUserCart(OrderProduct newOrder) {
        orderProduct.add(newOrder);
        OrderProductDAO.saveOrderListProductByChar(orderProduct);
    }
     public static OrderProduct findOrderProduct(String numOrder) {
        for (OrderProduct order : orderProduct) {
            if (order.getID().equals(numOrder)) {
                return order;
            }
        }
        return null;
    }
     public static ArrayList<OrderProduct> getOrderProduct(){
         return orderProduct;
     }
     
     public static boolean removeOrderProduct(String numOrder) {
        for(OrderProduct orderp : orderProduct){
            if(orderp.getID().equals(numOrder))
            orderProduct.remove(orderp);
            
            return true;
        }
        return false;
    }
}
