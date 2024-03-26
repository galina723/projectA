/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;
import model.ProductInCart;
import model.User;
import model.UserCart;
import utils.EncryptPassword;
import utils.UserCartDAO;
import utils.UserCartManager;
import utils.ProductDAO;
import utils.UserDAO;
import utils.UserManager;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "/LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

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

        String username = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String status = "Active";

        List<Product> new_productList = ProductDAO.reStore_NewProduct_FromFile();
        List<Product> bestSelling_productList = ProductDAO.reStore_BestSelling_Product_FromFile();
        List<Product> bathroom_productList = ProductDAO.reStore_BathRoomProduct_FromFile();
        List<Product> bedroom_productList = ProductDAO.reStore_BedRoomProduct_FromFile();
        List<Product> kitchen_productList = ProductDAO.reStore_KitchenProduct_FromFile();
        List<Product> livingroom_productList = ProductDAO.reStore_LivingRoomProduct_FromFile();
        if (username.equals("Admin") && pass.equals("admin")) {
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("bestsellingList", bestSelling_productList);
            response.sendRedirect("AdminBoard.jsp");
        } else {
            pass = EncryptPassword.toSHA1(pass);
            User user = new User(username, email, pass, status);
            UserManager usermanager = new UserManager();
            boolean checkUser = usermanager.checkUser(username, pass);
            if (checkUser) {
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("User", user);
                httpSession.setAttribute("UserName", user.name);
                httpSession.setAttribute("ListNewProduct", new_productList);
                httpSession.setAttribute("ListBestSellProduct", bestSelling_productList);
                httpSession.setAttribute("ListRestRoomProduct", bathroom_productList);
                httpSession.setAttribute("ListBedRoomProduct", bedroom_productList);
                httpSession.setAttribute("ListLivingRoomProduct", livingroom_productList);
                httpSession.setAttribute("ListKitchenProduct", kitchen_productList);
                UserCart currentUserCart = UserCartManager.findUserCart(username);
                httpSession.setAttribute("userCart", currentUserCart.getUserCart());
                request.getRequestDispatcher("index_LogInSuccess.jsp").forward(request, response);
            } else {
                HttpSession httpSession = request.getSession();
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
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
