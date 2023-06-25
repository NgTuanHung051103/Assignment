/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author NgTua
 */
public class addToCart extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addToCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addToCart at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String MaSP_str = request.getParameter("MaSP");
        int MaSP = Integer.parseInt(MaSP_str);
        
         Cookie[] cookies = request.getCookies();
         String txt_cart = "";

//         Lay txt_cart da luu tu truoc 
//            Xoa txt_cart da luu vi co thay doi
          for (Cookie cookie : cookies) {
            if ( cookie.getName().equals("txt_cart") ) {
                txt_cart += cookie.getValue();
                cookie.setMaxAge(0);
                response.addCookie(cookie);
                break;
            }
        }
 
//          Them san pham vao txt_cart
//      Neu chua co San Pham nao trong txt_cart
       if (txt_cart.isEmpty()) {
            txt_cart = MaSP_str + ":" + 1;
//        Da co 1 so San Pham trong txt_cart
        } else {
//              array String tung san pham  
            String[] products = txt_cart.split("/");
            boolean isExist = false;
            for (int i = 0; i < products.length; i++) {
//                  Chia MaSP va SoLuong
                String[] product = products[i].split(":");
                if ( product[0].equals(MaSP_str) ) {
//                          Tang SoLuong them 1
                    int quantity = Integer.parseInt(product[1]) + 1;
//                         ghep SoLuong vao MaSP
                    products[i] = MaSP_str + ":" + Integer.toString(quantity);
//                        da tang thanh cong
                    isExist = true;
                    break;
                }
            }
//              Ghep cac phan tu thanh 1 String
            txt_cart = products[0];
            for (int i = 1; i < products.length; i++) {
                txt_cart += "/" + products[i];
            }
            
//              Chua ton tai San Pham do trong cart
            if ( !isExist ) {
                txt_cart += "/" + MaSP_str + ":" + 1;
            }
        }
        Cookie cookie = new Cookie("txt_cart", txt_cart);
        cookie.setMaxAge(60 * 10);
        response.addCookie(cookie);   
        
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
