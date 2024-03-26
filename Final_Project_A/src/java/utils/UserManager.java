/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.*;
import model.User;

/**
 *
 * @author ADMIN
 */
public class UserManager {

    public UserManager() {
        this.listUser = userDAO.reStoreUserFromFile();
        this.userDAO = new UserDAO();
    }

    public boolean checkUser(String name, String password) {

        ArrayList<User> listUser = restoreData();
        for (int i = 0; i < listUser.size(); i++) {

            if (name.equals(listUser.get(i).getName()) && password.equals(listUser.get(i).getPassword())) {
                if (listUser.get(i).getStatus().equals("Active")) {
                    return true;
                }
            }
        }
        return false;
    }
    public boolean changStatusUser(String name) {
        for(int i = 0; i < listUser.size(); i++){
            if(listUser.get(i).getName().equals(name)){
                User user = listUser.get(i);
                user.setStatus("Suspend");
                listUser.set(i, user);
                UserDAO.saveUserListBy_Char(listUser);
                return true;
            }
        }
       
        return false;
    }
    public ArrayList<User> restoreData() {

        listUser = userDAO.reStoreUserFromFile();
        return listUser;
    }

    public ArrayList<User> getListUser() {
        return listUser;
    }
    
    public User findUserbyName(String name) {
        for (int i = 0; i < listUser.size(); i++) {
            if (listUser.get(i).getName().equals(name)) {
                return listUser.get(i);
            }
        }
        return null;
    }
    public boolean addUser(User user) {
        String name = user.getName();
        String password = user.getPassword();
        boolean check = checkUser(name, password);
        if (!check) {
            listUser.add(user);
            userDAO.saveUserListBy_Char(listUser);
            return true;
        }
        return false;
    }
      public boolean DeleteUser(String name) {
        User temp = findUserbyName(name);
        if (temp != null) {
            listUser.remove(temp);
            return true;
        }
        return false;
    }
    public static ArrayList<User> listUser;
    private UserDAO userDAO;
    private User user;

}
