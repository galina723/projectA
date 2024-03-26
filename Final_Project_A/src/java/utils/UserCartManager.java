/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import model.Product;
import model.ProductInCart;
import model.User;
import model.UserCart;

/**
 *
 * @author Asus
 */
public class UserCartManager {

    private static ArrayList<UserCart> cartList = UserCartDAO.restore_ListUserCart();

    public static void addNewUserCart(UserCart newUserCart) {
        cartList.add(newUserCart);
        UserCartDAO.saveUserCartListBy_Char(cartList);
    }

    public static ArrayList<UserCart> getCartList() {
        return cartList;
    }

    public static UserCart findUserCart(String userName) {
        for (UserCart userCart : cartList) {
            if (userCart.getUserName().equals(userName)) {
                return userCart;
            }
        }
        return null;
    }

    public static void addProductTo_One_UserCart(String userName, ProductInCart product) {
        for (UserCart userCart : cartList) {
            if (userCart.getUserName().equals(userName)) {
                userCart.checkQuantityThenAddToCart(product);
                UserCartDAO.saveUserCartListBy_Char(UserCartManager.cartList);
                System.out.println("Add sp vao one user cart thanh cong");
                break;
            }
        }
    }

    public static void removeProduct_In_One_UserCart(String userName, String ID) {
        for (UserCart userCart : cartList) {
            if (userCart.getUserName().equals(userName)) {
                for (ProductInCart productInCart : userCart.userCart) {
                    if (productInCart.getID().equals(ID)) {
                        userCart.userCart.remove(productInCart);
                        break;
                    }
                }
                UserCartDAO.saveUserCartListBy_Char(UserCartManager.cartList);
                break;
            }
        }
    }

    public static void removeAllProduct_In_One_UserCart(String userName) {
        for (UserCart userCart : cartList) {
            if (userCart.getUserName().equals(userName)) {
                cartList.remove(userCart);
                UserCart newUserCart = new UserCart(userName);
                cartList.add(newUserCart);
                break;
            }
        }
        UserCartDAO.saveUserCartListBy_Char(UserCartManager.cartList);
    }
}
