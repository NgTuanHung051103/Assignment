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
import logic.common.LGlogin;
import model.User;

public class loginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        get TK MK from login.jsp
        String Tk = request.getParameter("fullname_Login");
        String Mk = request.getParameter("password_Login");
        
//       Kiem tra xem co hop le hay khong
        LGlogin login = new LGlogin();
        int result = login.checkLogin(Tk, Mk);
        
//        Kiem tra ket qua dang nhap
        switch (result) {
            
//         Dang nhap thanh cong: 
            case 0:
//              Set Cookie Account
                Cookie Account = new Cookie("loginedAccount", Tk);
                Account.setMaxAge(60 * 30);
                response.addCookie(Account);
                
//                get Cart
                String txtCart = login.getTxtCart(Tk) ;

                int isAdmin = login.get_Info_User_Login(Tk).getIsAdmin();
//                set Cookie Cart
                Cookie txt_cart = new Cookie("txt_cart", txtCart);
                txt_cart.setMaxAge( 60 * 30 );
                response.addCookie(txt_cart);
                
//               Set session de truyen toi trang home
                HttpSession session = request.getSession();
                session.setAttribute("loginedAccount", Tk);
                
                if(isAdmin == 1)
                    response.sendRedirect("list");
                else if(isAdmin == 2)
                    response.sendRedirect("listAdmin");
                break;
                
//          Chua ton tai tai khoan
            case 1:
                request.setAttribute("messLogin", "Tài kho?n không t?n t?i");
                request.getRequestDispatcher("/view/user/homepage/login.jsp").forward(request, response);
                break;
                
//          Sai mat khau      
            case 2:
                request.setAttribute("messLogin", "Sai m?t kh?u");
                request.getRequestDispatcher("/view/user/homepage/login.jsp").forward(request, response);
                break;
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
