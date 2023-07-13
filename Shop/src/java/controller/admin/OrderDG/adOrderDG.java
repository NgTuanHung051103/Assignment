/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.OrderDG;

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

public class adOrderDG extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //        Lay tat ca order dang CXN
        OrderDAO ODdb = new OrderDAO();
        
        ArrayList<Order> list_orderDG = ODdb.getAllByStatus(2);
        
       request.setAttribute("list_orderDG", list_orderDG);
        
//        Lay tat ca orderdetail theo list order tren 
        LGadminOrder LGAO = new LGadminOrder();
        
        ArrayList<OrderDetail> list_order_detailDG = LGAO.get_OrderDetail_By_OrderID(list_orderDG);
        
        request.setAttribute("list_order_detailDG", list_order_detailDG);
        
//      -- Lay thong tin san pham: ( giong account.java )
        HttpSession session = request.getSession();
        
        LGaccountSanPham lgASP = new LGaccountSanPham();

        HashMap<Integer, SanPham> hashmapSanPham = new HashMap<>();

        hashmapSanPham = lgASP.get_HashMap_SanPham_By_MaSP();
        
        session.setAttribute("hashmapSanPham", hashmapSanPham);
        
        
//      Chuyen toi adOrderDG.jsp
        request.getRequestDispatcher("view/admin/dashboard/adOrderDG.jsp").forward(request, response);     
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
