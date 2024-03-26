/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class OrderProduct {

    public OrderProduct(String ID) {
        this.ID = ID;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public List<OrderProductIn> getOrderPro() {
        return orderPro;
    }

    public void setOrderPro(List<OrderProductIn> orderPro) {
        this.orderPro = orderPro;
    }
    public String ID;
    public List<OrderProductIn> orderPro = new ArrayList<>();
    
    public void addOr(OrderProductIn product){
        this.orderPro.add(product);
    }
}
