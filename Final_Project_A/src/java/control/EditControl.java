/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Product;
import utils.ProductDAO;
import utils.ProductManager;

/**
 *
 * @author ADMIN
 */
@MultipartConfig
@WebServlet(name = "EditControl", urlPatterns = {"/edit"})
public class EditControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        HttpSession httpsession = request.getSession();
        //System.out.println("In abhsdbaj" + " " +id);
        ProductManager proMn = new ProductManager();
        Product produ = proMn.findProductByID(id);
        httpsession.setAttribute("product", produ);
        request.getRequestDispatcher("EditProduct.jsp").forward(request, response);
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession httpsession = request.getSession();
        String productname = request.getParameter("productname");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        String material = request.getParameter("material");
        String stock = request.getParameter("stock");
        Part part = request.getPart("img");
        String pathImg = part.getSubmittedFileName();
        
        Product product = (Product) httpsession.getAttribute("product");
        if (pathImg.equals("")) {
            pathImg = product.getPathIMG();
        } else {
            String temp = "assets\\images\\product\\";
            pathImg = temp.concat(pathImg);
        }
        
        Product product1 = new Product(product.getID(), productname, price, quantity, material, stock, pathImg);
        ProductManager proManager = new ProductManager();
        proManager.EditProduct(product.getID(), product1);
        ProductDAO.saveProductListAsChar(proManager.productList);
        httpsession.setAttribute("productList", proManager.productList);
        request.getRequestDispatcher("productAdmin.jsp").forward(request, response);
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
