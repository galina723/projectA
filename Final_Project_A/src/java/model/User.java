/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;
import utils.ProductDAO;

/**
 *
 * @author ADMIN
 */
public class User {
    public String name;
    public String email;
    public String password;
    public String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }
    

    public void setPassword(String password) {
        this.password = password;
    }

    public User(String name, String email,String password, String status) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.status = status;
    }
    
}
