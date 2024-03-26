/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serial;
import java.io.Serializable;

/**
 *
 * @author Asus
 */
public class Product implements Serializable {

    public Product(String ID, String name, String price, String quantity, String material, String status, String pathIMG) {
        this.ID = ID;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.material = material;
        this.status = status;
        this.pathIMG = pathIMG;

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    private String ID;

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }
    private String name;
    private String price;
    private String quantity;
    private String material;
    private String status;
    private String pathIMG;

    public String getPathIMG() {
        return pathIMG;
    }

    public void setPathIMG(String pathIMG) {
        this.pathIMG = pathIMG;
    }

    public String getProductAsString() {
        String str = ID;
        str += "\n" + name;
        str += "\n" + price;
        str += "\n" + quantity;
        str += "\n" + material;
        str += "\n" + status;
        str += "\n" + pathIMG;

        return str;
    }
}
