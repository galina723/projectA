/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.ArrayList;
import model.Product;
import utils.ProductDAO;

/**
 *
 * @author Asus
 */
public class ProductManager {

    public static ArrayList<Product> productList = ProductDAO.reStore_AllProduct_FromFile();
    public Product product;

    public boolean addProduct() {
        String ID = product.getID();
        String name = product.getName();
        String price = product.getPrice();
        String quantity = product.getQuantity();
        String material = product.getMaterial();
        String status = product.getStatus();
        String pathIMG = product.getPathIMG();
        Product product = new Product(ID, name, price, quantity, material, status, pathIMG);
        productList.add(product);
        return true;
    }
//
//    public static void restore_AllProducts_FromFile() {
//        productList = ProductDAO.reStore_AllProduct_FromFile();
//    }

    public static Product findProductByID(String ID) {
        for (Product product : productList) {
            if (product.getID().equals(ID)) {
                return product;
            }
        }
        return null;
    }

    public boolean DeleteProduct(String Id) {
        Product temp = findProductByID(Id);
        if (temp != null) {
            productList.remove(temp);
            return true;
        }
        return false;
    }

    public boolean EditProduct(String Id, Product product) {
        Product temp = findProductByID(Id);
        if (temp != null) {
            for (int i = 0; i < productList.size(); i++) {
                if (Id.equals(productList.get(i).getID())) {
                    productList.set(i, product);
                     return true;
                }
               
            }

        }
        return false;
    }

}
