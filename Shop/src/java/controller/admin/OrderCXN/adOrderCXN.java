/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.Order;

import dal.OrderDAO;
import dal.OrderDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import static java.util.Collections.reverse;
import java.util.HashMap;
import logic.account.LGaccountOrder;
import logic.account.LGaccountOrderDetail;
import logic.account.LGaccountSanPham;
import logic.admin.LGadminOrder;
import model.Order;
import model.OrderDetail;
import model.SanPham;

/**
 *
 * @author ptkng
 */
public class adOrderCXN extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        Lay tat ca order dang CXN
        OrderDAO ODdb = new OrderDAO();
        
        ArrayList<Order> list_orderCXN = ODdb.getAllByStatus(1);
        reverse(list_orderCXN);
       request.setAttribute("list_orderCXN", list_orderCXN);
        
//        Lay tat ca orderdetail theo list order tren 
        LGadminOrder LGAO = new LGadminOrder();
        
        ArrayList<OrderDetail> list_order_detailCXN = LGAO.get_OrderDetail_By_OrderID(list_orderCXN);
        
        reverse(list_order_detailCXN);
        request.setAttribute("list_order_detailCXN", list_order_detailCXN);
       
//      -- Lay thong tin san pham: ( giong account.java )
        HttpSession session = request.getSession();
        
        LGaccountSanPham lgASP = new LGaccountSanPham();

        HashMap<Integer, SanPham> hashmapSanPham = new HashMap<>();

        hashmapSanPham = lgASP.get_HashMap_SanPham_By_MaSP();
        
        session.setAttribute("hashmapSanPham", hashmapSanPham);
        
        
        
//      Chuyen toi adOrderCXN.jsp
        request.getRequestDispatcher("view/admin/dashboard/adOrderCXN.jsp").forward(request, response);     
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
