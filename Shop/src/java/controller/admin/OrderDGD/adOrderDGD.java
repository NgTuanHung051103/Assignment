/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.OrderDGD;

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
public class adOrderDGD extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        Lay tat ca order dang DGD
        OrderDAO ODdb = new OrderDAO();

        ArrayList<Order> list_orderDGD = ODdb.getAllByStatus(4);

        request.setAttribute("list_orderDGD", list_orderDGD);

//        Lay tat ca orderdetail theo list order tren 
        LGadminOrder LGAO = new LGadminOrder();

        ArrayList<OrderDetail> list_order_detailDGD = LGAO.get_OrderDetail_By_OrderID(list_orderDGD);

        request.setAttribute("list_order_detailDGD", list_order_detailDGD);

//      Chuyen toi adOrderDGD.jsp
        request.getRequestDispatcher("view/admin/dashboard/adOrderDGD.jsp").forward(request, response);

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
