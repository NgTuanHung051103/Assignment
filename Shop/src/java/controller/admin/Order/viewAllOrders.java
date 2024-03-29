/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.Order;

import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import logic.account.LGaccountSanPham;
import logic.admin.LGadminOrder;
import model.Order;
import model.OrderDetail;
import model.SanPham;

/**
 *
 * @author ptkng
 */
public class viewAllOrders extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            //        Lay tat ca order dang CXN
        OrderDAO ODdb = new OrderDAO();
        
        ArrayList<Order> list_AllOrders = ODdb.getAll();
        
       request.setAttribute("list_AllOrders", list_AllOrders);
        
//        Lay tat ca orderdetail theo list order tren 
        LGadminOrder LGAO = new LGadminOrder();
        
        ArrayList<OrderDetail> list_all_order_detail = LGAO.get_OrderDetail_By_OrderID(list_AllOrders);
        
        request.setAttribute("list_all_order_detail", list_all_order_detail);
        
        
//      -- Lay thong tin san pham: ( giong account.java )
        HttpSession session = request.getSession();
        
        LGaccountSanPham lgASP = new LGaccountSanPham();

        HashMap<Integer, SanPham> hashmapSanPham = new HashMap<>();

        hashmapSanPham = lgASP.get_HashMap_SanPham_By_MaSP();
        
        session.setAttribute("hashmapSanPham", hashmapSanPham);        
        
//      Chuyen toi adOrderTC.jsp
        request.getRequestDispatcher("view/admin/dashboard/adAllOrders.jsp").forward(request, response);     
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
