/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Order;
import model.OrderProduct;
import model.User;
import model.UserCart;
import utils.OrderManager;
import utils.OrderProductDAO;
import utils.OrderProductManager;
import utils.UserCartManager;
import utils.UserManager;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ViewOrderAdminControl", urlPatterns = {"/ViewOrderAdminControl"}, loadOnStartup = 1)
public class ViewOrderAdminControl extends HttpServlet {

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

        HttpSession httpsession = request.getSession();
        String numOrder = request.getParameter("id");
        OrderManager orderMna = new OrderManager();
        Order order = orderMna.findorderbyNumOrder(numOrder);
        System.out.println("In trong day ha " + order);
        UserManager userMna = new UserManager();
        User user = userMna.findUserbyName(order.getUserName());
        UserCartManager userCartMna = new UserCartManager();
        OrderProductManager orderPMna = new OrderProductManager();
        OrderProduct orderP = orderPMna.findOrderProduct(numOrder);
//        orderPMna.orderProduct = OrderProductDAO.restoreOrderProduct();
        System.out.println("in trong day" + orderPMna.findOrderProduct(numOrder));
        String product = "";
            for (int i = 0; i < orderP.getOrderPro().size(); i++) {
                String productname = orderP.getOrderPro().get(i).getProduct();
                String amount = orderP.getOrderPro().get(i).getAmount();
                product =  product.concat(productname.concat(" ").concat("X").concat(amount)).concat("\n");  
            }
        httpsession.setAttribute("productNum", product);
        httpsession.setAttribute("email", user.getEmail());
        httpsession.setAttribute("order", order);
        request.getRequestDispatcher("ViewOrderAdmin.jsp").forward(request, response);
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
