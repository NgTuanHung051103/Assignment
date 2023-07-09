/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import logic.cart.LGcartCookie;
import logic.common.LGlogin;

/**
 *
 * @author NgTua
 */
public class logoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        HttpSession session = request.getSession();

//      save Tk         
        String Tk = (String) session.getAttribute("loginedAccount");
        
//        remove session       
        session.removeAttribute("loginedAccount");

        
//      remove cookie: loginedAccount
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ( cookie.getName().equals("loginedAccount") ) {
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
                if ( cookie.getName().equals("txt_cart") ){
                    
//                    set cart cho tai khoan 
                    LGcartCookie lgCart = new LGcartCookie();
                     lgCart.updateToDB( cookie.getValue(), Tk );
                    
//                    remove cookie txt_cart
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
        }

        response.sendRedirect("list");
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
