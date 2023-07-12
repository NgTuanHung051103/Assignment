/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user.account;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import logic.admin.LGadminOrder;

/**
 *
 * @author ptkng
 */
public class HuyDH extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String OrderID = request.getParameter("OrderID");
        
        System.out.println(OrderID);
//        Goi LG
        LGadminOrder LGAO = new LGadminOrder();
      
//        Chuyen status order = 0 (goi giong HuyCXN servlet)
        LGAO.duyetCXN(OrderID, 0);
        
        response.sendRedirect("account");
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
