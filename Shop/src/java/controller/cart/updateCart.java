/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.cart;

import jakarta.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import logic.cart.LGcartCookie;

/**
 *
 * @author NgTua
 */
public class updateCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //        Lay txt_cart sau khi duoc update
        String txt_cart = request.getParameter("txt_cart");
        
         LGcartCookie lgCart = new LGcartCookie();

//      Set lai txt_cart len cookie         
         lgCart.set(request, response, txt_cart);
         
//       Quay ve servlet cart de khoi tao lai trang cart.jsp
        response.sendRedirect("cart");
        
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
