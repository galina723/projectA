/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Asus
 */
public class UserCart implements Serializable {

    private String userName;
    public List<ProductInCart> userCart = new ArrayList<>();
//id, name,quantity, price

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public List<ProductInCart> getUserCart() {
        return userCart;
    }

    public void setUserCart(List<ProductInCart> userCart) {
        this.userCart = userCart;
    }

    public UserCart(String userName) {
        this.userName = userName;
    }

    public void addProducttoCart(ProductInCart product) {

        this.userCart.add(product);

    }

    public boolean checkQuantityThenAddToCart(ProductInCart productInCart) {
        for (ProductInCart productInCart1 : userCart) {
            if (productInCart1.getID().equals(productInCart.getID())) {
                productInCart1.setQuantity(productInCart1.getQuantity() + 1);
                return true;
            }
        }
        productInCart.setQuantity(1);
        this.userCart.add(productInCart);
        return false;
    }

    public void removeProductInCart(String ID) {
        List<ProductInCart> newUserCart = new ArrayList<>();
        for (ProductInCart productInCart1 : userCart) {
            if (!productInCart1.getID().equals(ID)) {
                newUserCart.add(productInCart1);
            }
        }
        this.userCart = newUserCart;
    }
}
