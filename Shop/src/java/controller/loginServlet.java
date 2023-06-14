/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import logic.LGlogin;
import model.User;

public class loginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String Tk = request.getParameter("fullname");
        String Mk = request.getParameter("password");

        LGlogin login = new LGlogin();
        int result = login.checkLogin(Tk, Mk);

        switch (result) {
            case 0:
//                 get all info of account
                User user = login.get_Info_User_Login(Tk);
                
//                call session:
                HttpSession session = request.getSession();
                session.setAttribute("loginedAccount", user);
                
                request.getRequestDispatcher("testResult.jsp").forward(request, response);
                break;
            case 1:
                request.setAttribute("mess", "Tài kho?n không t?n t?i");
                request.getRequestDispatcher("/view/user/homepage/login.jsp").forward(request, response);
                break;
            case 2:
                request.setAttribute("mess", "Sai m?t kh?u");
                request.getRequestDispatcher("/view/user/homepage/login.jsp").forward(request, response);
                break;

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
