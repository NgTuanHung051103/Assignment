/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import logic.admin.LGadminEditAccount;
import logic.common.LGlogin;

/**
 *
 * @author ptkng
 */
public class editAccount extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
//        Thong tin bat buoc
        String ID = request.getParameter("idEdit");
        String Tk = request.getParameter("tkEdit");
        String Mk = request.getParameter("mkEdit");
        int isAdmin = Integer.parseInt(request.getParameter("categoryEdit"));
        
//        Thong tin ko quan trong
        String Ten = request.getParameter("nameEdit");
        String Email = request.getParameter("emailEdit");
        String DiaChi = request.getParameter("diachiEdit");
        String SDT = request.getParameter("sdtEdit");
        String txtCart = request.getParameter("txtcartEdit");
        String Tuoi_str = request.getParameter("tuoiEdit");
        
        LGadminEditAccount lgAEC = new LGadminEditAccount();

//            Edit thong tin trong database
       lgAEC.edit_Account_By_ID(ID, Tk, Mk, isAdmin, Ten, Email, DiaChi, SDT, txtCart, Tuoi_str);
        
        
        response.sendRedirect("adAccount");
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
