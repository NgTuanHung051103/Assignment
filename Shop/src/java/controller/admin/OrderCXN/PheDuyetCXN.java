/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.OrderCXN;

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
public class PheDuyetCXN extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
//        Nhan OrderID tu jsp
        int OrderID = Integer.parseInt(request.getParameter("OrderID"));
            
//         Chuyen den ship hang 
            LGadminOrder LGAO = new LGadminOrder();
            
//         Chuyen status order = 2   
            LGAO.duyet(OrderID, 2);

//          Tru trong database: Truy cap vao table OrderDetail de lay so luong
//           1: tru
             LGAO.updateSoLuong(OrderID, 1); 
             
             response.sendRedirect("adOrderCXN");
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
