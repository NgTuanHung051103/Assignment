/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.OrderTC;

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
public class DaGiaoDich extends HttpServlet {

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
            
//         Chuyen status order = 4: da giao dich  
            LGAO.duyetCXN(OrderID, 4);

//          Tru trong database: Truy cap vao table OrderDetail de lay so luong
//           2: tang
//             LGAO.updateSoLuong(OrderID, 2); 
             
             response.sendRedirect("adOrderTC");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
