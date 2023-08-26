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
import logic.common.LGsignup;

/**
 *
 * @author ptkng
 */
public class signupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Tk = request.getParameter("SignUpUsername");
        
        String Mk = request.getParameter("SignUpPassword");
        
        LGsignup signup = new LGsignup();
        
//        Neu chua ton tai tai khoan trong database
//          -> Co the dang ky
        if ( signup.get_Info_User_Login(Tk) == null ){

//          dang ky tai khoan            
            signup.create_Account(Tk, Mk);
           
            request.setAttribute("messSignUp", "Bạn đã đăng ký thành công, vui lòng đăng nhập");
            request.getRequestDispatcher("/view/user/homepage/login.jsp").forward(request, response);

        }   else { // Neu da ton tai trong database:
            request.setAttribute("messSignUp", "Đã tồn tại tên đăng nhập");
            request.getRequestDispatcher("/view/user/homepage/login.jsp").forward(request, response);
            
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
