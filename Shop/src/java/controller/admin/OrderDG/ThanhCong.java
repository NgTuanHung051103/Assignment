/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.OrderDG;

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
public class ThanhCong extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        Nhan OrderID tu jsp
        String OrderID = request.getParameter("OrderID");
        
//         Chuyen den ship hang 
            LGadminOrder LGAO = new LGadminOrder();
            
//         Chuyen status order = 3: thanh cong  
            LGAO.duyetCXN(OrderID, 3);

            response.sendRedirect("adOrderDG");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
