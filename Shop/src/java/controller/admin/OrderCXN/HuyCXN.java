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
public class HuyCXN extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        Nhan OrderID tu jsp
        String OrderID = request.getParameter("OrderID");
        
//        Goi LG
        LGadminOrder LGAO = new LGadminOrder();
      
//        Chuyen status order = 0
        LGAO.duyetCXN(OrderID, 0);
        
//          Tang trong database: Truy cap vao table OrderDetail de lay so luong
//              2: tang
//             LGAO.updateSoLuong(OrderID, 2); 

        response.sendRedirect("adOrderCXN");
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}