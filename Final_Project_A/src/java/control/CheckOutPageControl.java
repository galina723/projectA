/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Order;
import model.OrderProduct;
import model.OrderProductIn;
import model.ProductInCart;
import model.UserCart;
import utils.Email;
import utils.OrderDAO;
import utils.OrderManager;
import utils.OrderProductDAO;
import utils.UserCartManager;
import utils.UserManager;

/**
 *
 * @author Asus
 */
@WebServlet(name = "CheckOutPageControl", urlPatterns = {"/CheckOutPageControl"})
public class CheckOutPageControl extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

        }
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
//        HttpSession httpSession = request.getSession();
//        String userName = (String) httpSession.getAttribute("UserName");
//        UserCart currentUserCart = UserCartManager.findUserCart(userName);
//        List<ProductInCart> userCartList = currentUserCart.getUserCart();
//        int totalQuantity = 0;
//        int totalPayment = 0;
//        for (ProductInCart productInCart : userCartList) {
//            totalQuantity += productInCart.getQuantity();
//            totalPayment += productInCart.getTotalPrice();
//        }
//        Random random = new Random();
//        int number = random.nextInt(999999);
//        String ID = String.format("%06d", number);
//        String date = request.getParameter("orderDate");
//        System.out.println("in date " + date);
//        Order order = new Order(ID, date, userName, String.valueOf(totalQuantity), String.valueOf(totalPayment));
//        OrderManager.addOrder(order);
//        OrderDAO.saveOrderList(OrderManager.getOrderList());
//        UserCartManager.removeAllProduct_In_One_UserCart(userName);
//        httpSession.setAttribute("userCart", UserCartManager.findUserCart(userName).getUserCart());
//        request.getRequestDispatcher("index_LogInSuccess.jsp").forward(request, response);
//        processRequest(request, response);

        HttpSession httpSession = request.getSession();
        Random random = new Random();
        int number = random.nextInt(999999);
        String ID = String.format("%06d", number);
        String userName = (String) httpSession.getAttribute("UserName");
        System.out.println("In trong serv" + userName);
        Email sendConfirm = new Email();
        UserManager userMna = new UserManager();
        sendConfirm.Email(userMna.findUserbyName(userName));
        ArrayList<ProductInCart> userCartList = (ArrayList<ProductInCart>) httpSession.getAttribute("userCart");
        
        //
        int totalQuantity = 0;
        int totalPayment = 0;
        ArrayList<OrderProduct> orderProId = OrderProductDAO.restoreOrderProduct();
        OrderProduct orderPro = new OrderProduct(ID);
        for (ProductInCart productInCart : userCartList) {
            totalQuantity += productInCart.getQuantity();
            totalPayment += productInCart.calculateTotalPrice();
            OrderProductIn orderIn = new OrderProductIn(productInCart.getProductName(), String.valueOf(productInCart.getQuantity()));
            System.out.println("in trong day " + String.valueOf(productInCart.getQuantity()));
            orderPro.addOr(orderIn);
        }
        orderProId.add(orderPro);
        OrderProductDAO.saveOrderListProductByChar(orderProId);
        String date = request.getParameter("orderDate");
        String city = request.getParameter("city");

        String address = request.getParameter("address").concat(" ").concat(city);
        String phone = request.getParameter("phone");
        Order order = new Order(ID, date, userName, address, phone, String.valueOf(totalQuantity), String.valueOf(totalPayment));
        OrderManager.addOrder(order);
        OrderDAO.saveOrderList(OrderManager.getOrderList());
        UserCart currentUserCart = UserCartManager.findUserCart(userName);
        UserCartManager.removeAllProduct_In_One_UserCart(userName);
        httpSession.setAttribute("userCart", UserCartManager.findUserCart(userName).getUserCart());
        request.getRequestDispatcher("index_LogInSuccess.jsp").forward(request, response);

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
