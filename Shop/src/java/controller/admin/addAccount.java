/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import logic.admin.LGadminAddAccount;

/**
 *
 * @author ptkng
 */
public class addAccount extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
//        Lay du lieu tu add.jsp
        String Tk = request.getParameter("tk");
        String Mk = request.getParameter("mk");
        
        String isAdmin_str = request.getParameter("category");
        
        System.out.println(isAdmin_str);
        
        String Ten = request.getParameter("name");
        String Email = request.getParameter("Email");
        String DiaChi = request.getParameter("diachi");
        String SDT = request.getParameter("sdt");
        String txtCart = request.getParameter("txtcart");
        String Tuoi_str = request.getParameter("tuoi");
        
        int isAdmin = Integer.parseInt(isAdmin_str);
        
        int Tuoi = 0;
        try{
            Tuoi = Integer.parseInt(Tuoi_str);
        } catch (NumberFormatException e) {
        }

        LGadminAddAccount lgAdd = new LGadminAddAccount();
        
        lgAdd.addAccount(Tk, Mk, isAdmin, Ten, Email, DiaChi, SDT, txtCart, Tuoi);
        
        
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
