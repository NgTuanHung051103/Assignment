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
        
//        Nhan OrderID tu servlet
        String OrderID = request.getParameter("OrderID");
            
//         Chuyen den ship hang 
            LGadminOrder LGAO = new LGadminOrder();
            
//         Chuyen status order = 2   
            LGAO.duyetCXN(OrderID, 2);

//          Tru trong database: Truy cap vao table OrderDetail de lay so luong
             LGAO.truSoLuong(OrderID); 
             
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
