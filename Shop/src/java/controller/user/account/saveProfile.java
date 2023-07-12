/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user.account;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import logic.common.LGlogin;

/**
 *
 * @author ptkng
 */
public class saveProfile extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ID = request.getParameter("ID");
         String SDT = request.getParameter("phone");
          String Ten = request.getParameter("ten");
           String Email = request.getParameter("email");
           String DiaChi = request.getParameter("diachi");
           String Mk = request.getParameter("password");
           
//           Lay Tk da dang nhap
           LGlogin login = new LGlogin();
           String Tk = login.getTK(request, response);
           
//           Vao database de save thong tin
           UserDAO Userdb = new UserDAO();
           Userdb.saveProfile(Tk, Ten, SDT, Email, DiaChi, Mk);
           
           response.sendRedirect("account");
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
