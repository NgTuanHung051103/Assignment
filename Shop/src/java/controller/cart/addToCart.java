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
import logic.LGcartCookie;

/**
 *
 * @author NgTua
 */
public class addToCart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String MaSP_str = request.getParameter("MaSP");
//        int MaSP = Integer.parseInt(MaSP_str);
        

         LGcartCookie lgCart = new LGcartCookie();

//          Them san pham moi vao cart         
         String txt_cart = lgCart.add(request, response, MaSP_str);
         
        Cookie cookie = new Cookie("txt_cart", txt_cart);
        cookie.setMaxAge(60 * 10);
        response.addCookie(cookie);   
        
//        set session de van o lai trang detailProduct
        HttpSession session = request.getSession();
        session.setAttribute("MaSP", MaSP_str);
        
        response.sendRedirect("detailProduct");
//        request.getRequestDispatcher("detailProduct").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
