/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.Account;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import logic.admin.LGadminDeleteAccount;

/**
 *
 * @author ptkng
 */
public class deleteAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String ID = request.getParameter("IDDelete");
        
        LGadminDeleteAccount lgDelete = new LGadminDeleteAccount();
        
//        Delete account in database
        lgDelete.deleteAccount(ID);
        
//      Delete orderCXN cua account vua xoa:
//      Chuyen sang status 4: 
        response.sendRedirect("adAccount");
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
