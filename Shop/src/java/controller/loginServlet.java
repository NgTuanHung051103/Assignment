/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.KhachHangDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author NgTua
 */
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

//        lay danh sach tai khoan
        KhachHangDAO KHdb = new KhachHangDAO();
        ArrayList<String> List_Tk_KhachHangs = KHdb.get_Tk_KhachHangs();
        
//        Neu list tai khoan rong 
         if ( List_Tk_KhachHangs.isEmpty() == false ){
              for (String s : List_Tk_KhachHangs) {
//                Neu tim duoc tai khoan da dang ky
                if (Tk.equalsIgnoreCase(s)) {
//                    Neu tai khoan do co mat khau == mat khau da dang ky
                    if (Mk.equalsIgnoreCase(KHdb.get_Mk_ByTk(Tk))) {
                        request.getRequestDispatcher("testResult.jsp").forward(request, response);
                    } else {
                        request.setAttribute("mess", "Sai m?t kh?u");
                        request.getRequestDispatcher("/view/user/homepage/login.jsp").forward(request, response);
                    }
                }
            }
         } 
//        tai khoan chua tung duoc dang ky
             request.setAttribute("mess", "Tài kho?n không t?n t?i");
            request.getRequestDispatcher("/view/user/homepage/login.jsp").forward(request, response);
         
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
