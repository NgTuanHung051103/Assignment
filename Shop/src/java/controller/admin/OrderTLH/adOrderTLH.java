/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.OrderTLH;

import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import logic.admin.LGadminOrder;
import model.Order;
import model.OrderDetail;
/**
 *
 * @author ptkng
 */
public class adOrderTLH extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //        Lay tat ca order dang TLH
        OrderDAO ODdb = new OrderDAO();
        
        ArrayList<Order> list_orderTLH = ODdb.getAllByStatus(5);
        
       request.setAttribute("list_orderTLH", list_orderTLH);
        
//        Lay tat ca orderdetail theo list order tren 
        LGadminOrder LGAO = new LGadminOrder();
        
        ArrayList<OrderDetail> list_order_detailTLH = LGAO.get_OrderDetail_By_OrderID(list_orderTLH);
        
        request.setAttribute("list_order_detailTLH", list_order_detailTLH);
        
        System.out.println("servlet");
        
//      Chuyen toi adOrderTLH.jsp
        request.getRequestDispatcher("view/admin/dashboard/adOrderTLH.jsp").forward(request, response);     
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
