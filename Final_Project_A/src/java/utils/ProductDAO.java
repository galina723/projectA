/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

/**
 *
 * @author Asus
 */
public class ProductDAO {

    private static String pathSRC = "C:\\Netbeans_Project\\Final_Project_A\\Final_Project_A\\Data";

    public ProductDAO() {
        File folder = new File(pathSRC);
        File fileSave = new File(pathSRC);
        if (!(folder.exists())) {
            folder.mkdirs();
        }
        if (!(fileSave.exists())) {
            try {
                fileSave.createNewFile();
            } catch (IOException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public static ArrayList<Product> reStore_AllProduct_FromFile() {
        ArrayList<Product> productList = new ArrayList<Product>();
        BufferedReader br = null;
        try {
            String dataPath = "ProductData.txt";
            String filename = pathSRC + "//"+ dataPath;
            String line = "";

            br = new BufferedReader(new FileReader(filename));
            while ((line = br.readLine()) != null) {
                String ID = line;
                String name = br.readLine();
                String price = br.readLine();
                String quantity = (br.readLine());
                String material = br.readLine();
                String status = br.readLine();
                String pathIMG = br.readLine();
                Product product = new Product(ID,name, price, quantity, material, status, pathIMG);
                productList.add(product);

            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IOException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            try {
                br.close();
            } catch (IOException ex) {
                java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
        }
        return productList;
    }

    public static ArrayList<Product> reStore_NewProduct_FromFile() {
        ArrayList<Product> productList = new ArrayList<Product>();
        BufferedReader br = null;
        try {
            String dataPath = "NewProductData.txt";
            String filename = pathSRC + "//"+ dataPath;
            String line = "";

            br = new BufferedReader(new FileReader(filename));
            while ((line = br.readLine()) != null) {
                String ID = line;
                String name = br.readLine();
                String price = br.readLine();
                String quantity = (br.readLine());
                String material = br.readLine();
                String status = br.readLine();
                String pathIMG = br.readLine();
                Product product = new Product(ID,name, price, quantity, material, status, pathIMG);
                productList.add(product);
                System.out.println(product.getName());
                System.out.println(product.getPathIMG());

            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IOException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            try {
                br.close();
            } catch (IOException ex) {
                java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
        }
        return productList;
    }
    public static ArrayList<Product> reStore_BestSelling_Product_FromFile() {
        ArrayList<Product> productList = new ArrayList<Product>();
        BufferedReader br = null;
        try {
            String dataPath = "BestSelling.txt";
            String filename = pathSRC + "//"+ dataPath;
            String line = "";

            br = new BufferedReader(new FileReader(filename));
            while ((line = br.readLine()) != null) {
                String ID = line;
                String name = br.readLine();
                String price = br.readLine();
                String quantity = (br.readLine());
                String material = br.readLine();
                String status = br.readLine();
                String pathIMG = br.readLine();
                Product product = new Product(ID,name, price, quantity, material, status, pathIMG);
                productList.add(product);
                System.out.println(product.getName());
                System.out.println(product.getPathIMG());

            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IOException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            try {
                br.close();
            } catch (IOException ex) {
                java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
        }
        return productList;
    }
    
     public static void saveProductListAsChar(ArrayList<Product> productList) {
            String dataPath = "ProductData.txt";

        File file_char = new File(pathSRC + "//" + dataPath);

        try {
            FileWriter fw = new FileWriter(file_char);
            BufferedWriter bw = new BufferedWriter(fw);
            for (int i = 0; i < productList.size(); i++) {
                String a = productList.get(i).getProductAsString();
                bw.write(a);
                bw.newLine();
                bw.flush();
            }
        } catch (IOException ex) {
        }
    }
public static ArrayList<Product> reStore_BathRoomProduct_FromFile() {
        ArrayList<Product> productList = new ArrayList<Product>();
        BufferedReader br = null;
        try {
            String dataPath = "BathRoom.txt";
            String filename = pathSRC + "//"+ dataPath;
            String line = "";

            br = new BufferedReader(new FileReader(filename));
            while ((line = br.readLine()) != null) {
                String ID = line;
                String name = br.readLine();
                String price = br.readLine();
                String quantity = (br.readLine());
                String material = br.readLine();
                String status = br.readLine();
                String pathIMG = br.readLine();
                Product product = new Product(ID,name, price, quantity, material, status, pathIMG);
                productList.add(product);
                System.out.println(product.getName());
                System.out.println(product.getPathIMG());

            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IOException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            try {
                br.close();
            } catch (IOException ex) {
                java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
        }
        return productList;
    }
    public static ArrayList<Product> reStore_LivingRoomProduct_FromFile() {
        ArrayList<Product> productList = new ArrayList<Product>();
        BufferedReader br = null;
        try {
            String dataPath = "LivingRoom.txt";
            String filename = pathSRC + "//"+ dataPath;
            String line = "";

            br = new BufferedReader(new FileReader(filename));
            while ((line = br.readLine()) != null) {
                String ID = line;
                String name = br.readLine();
                String price = br.readLine();
                String quantity = (br.readLine());
                String material = br.readLine();
                String status = br.readLine();
                String pathIMG = br.readLine();
                Product product = new Product(ID,name, price, quantity, material, status, pathIMG);
                productList.add(product);
                System.out.println(product.getName());
                System.out.println(product.getPathIMG());

            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IOException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            try {
                br.close();
            } catch (IOException ex) {
                java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
        }
        return productList;
    }
    
    public static ArrayList<Product> reStore_BedRoomProduct_FromFile() {
        ArrayList<Product> productList = new ArrayList<Product>();
        BufferedReader br = null;
        try {
            String dataPath = "BedRoom.txt";
            String filename = pathSRC + "//"+ dataPath;
            String line = "";

            br = new BufferedReader(new FileReader(filename));
            while ((line = br.readLine()) != null) {
                String ID = line;
                String name = br.readLine();
                String price = br.readLine();
                String quantity = (br.readLine());
                String material = br.readLine();
                String status = br.readLine();
                String pathIMG = br.readLine();
                Product product = new Product(ID,name, price, quantity, material, status, pathIMG);
                productList.add(product);
                System.out.println(product.getName());
                System.out.println(product.getPathIMG());

            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IOException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            try {
                br.close();
            } catch (IOException ex) {
                java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
        }
        return productList;
    }
    
    public static ArrayList<Product> reStore_KitchenProduct_FromFile() {
        ArrayList<Product> productList = new ArrayList<Product>();
        BufferedReader br = null;
        try {
            String dataPath = "Kitchen.txt";
            String filename = pathSRC + "//"+ dataPath;
            String line = "";

            br = new BufferedReader(new FileReader(filename));
            while ((line = br.readLine()) != null) {
                String ID = line;
                String name = br.readLine();
                String price = br.readLine();
                String quantity = (br.readLine());
                String material = br.readLine();
                String status = br.readLine();
                String pathIMG = br.readLine();
                Product product = new Product(ID,name, price, quantity, material, status, pathIMG);
                productList.add(product);
                System.out.println(product.getName());
                System.out.println(product.getPathIMG());

            }
        } catch (FileNotFoundException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IOException ex) {
            java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } finally {
            try {
                br.close();
            } catch (IOException ex) {
                java.util.logging.Logger.getLogger(ProductDAO.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
        }
        return productList;
    }
    
}
