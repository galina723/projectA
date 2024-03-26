/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;

/**
 *
 * @author Asus
 */
public class ProductInCart implements Serializable {

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    private String ID;
    private String productName;
    private int quantity;
    private String pathIMG;

    public String getPathIMG() {
        return pathIMG;
    }

    public void setPathIMG(String pathIMG) {
        this.pathIMG = pathIMG;
    }
    private int price;

    public ProductInCart(String ID, String productName, String pathIMG, int price) {
        this.ID = ID;
        this.productName = productName;
        this.pathIMG = pathIMG;
        this.price = price;
    }
    public int totalPrice = calculateTotalPrice();

    public int calculateTotalPrice() {
        return this.quantity * this.price;
    }
     
}
