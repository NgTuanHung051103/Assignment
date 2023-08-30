/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.cart;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import logic.cart.LGcartCookie;
import model.Cart;
import model.CartDetail;

/**
 *
 * @author NgTua
 */
public class cart extends HttpServlet {

//  khoi tao nhung gia tri ban dau cart khi bam vao gio hang
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        LGcartCookie lgCart = new LGcartCookie();

//        get txt_cart from cookie
        String txt_cart = lgCart.get(request, response);

//        Tao cart: list luu cac item da duoc add vao gio hang (0rder)
        Cart cart = new Cart(txt_cart);

//        Lay list order co trong cart
        ArrayList< CartDetail> listOrderDetail = cart.getCart();

//        lay so luong order co trong cart
        int n = lgCart.getNumberProduct(request, response);
            
//        set soluong - list CartDetail
        request.setAttribute("size", n);
        request.setAttribute("data", listOrderDetail);
        request.getRequestDispatcher("view/user/homepage/cart.jsp").forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
