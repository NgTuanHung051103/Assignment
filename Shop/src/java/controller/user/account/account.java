/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user.account;

import dal.SanPhamDAO;
import dal.ThongBaoDAO;
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
import logic.account.LGaccountUser;
import logic.account.LGaccountOrder;
import logic.account.LGaccountOrderDetail;
import logic.account.LGaccountSanPham;
import model.Order;
import model.OrderDetail;
import model.SanPham;
import model.ThongBao;
import model.User;

/**
 *
 * @author ptkng
 */
public class account extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         HttpSession session = request.getSession();
        
         ThongBaoDAO TBdb = new ThongBaoDAO();
         
        LGaccountOrder lgAOR = new LGaccountOrder();

        LGaccountOrderDetail lgAOD = new LGaccountOrderDetail();

        LGaccountUser lgAIU = new LGaccountUser();
        
        LGaccountSanPham lgASP = new LGaccountSanPham();
        
// ----------------Lay theo order va orderdetail-------------------------     

//      SET thong tin cho Profile    

        User user = lgAIU.getInfoUser(request, response);

        request.setAttribute("user", user);

//      SET thông báo 

        ArrayList<ThongBao> list_ThongBao =TBdb.getAllByAccountID(user.getID());
        
        reverse(list_ThongBao);
        
        request.setAttribute("list_ThongBao", list_ThongBao);
        
        
//      -- Lay thong tin san pham: 
        HashMap<Integer, SanPham> hashmapSanPham = new HashMap<>();

        hashmapSanPham = lgASP.get_HashMap_SanPham_By_MaSP();
        
        session.setAttribute("hashmapSanPham", hashmapSanPham);
        
//        SET thong tin cho Cho xac nhan      
        
//    -- Lay Order: 
        ArrayList<Order> list_orderCXN = lgAOR.getOrderByAccountID(user.getID(), 1);

        request.setAttribute("list_orderCXN", list_orderCXN);

//     -- Lay order detail: 
        ArrayList<OrderDetail> list_order_detailCXN = lgAOD.get_OrderDetail_By_OrderID(list_orderCXN);

        request.setAttribute("list_order_detailCXN", list_order_detailCXN);

        
//        SET thong tin cho Dang Giao:

//    -- Lay Order: 
        ArrayList<Order> list_orderDG = lgAOR.getOrderByAccountID(user.getID(), 2);

        request.setAttribute("list_orderDG", list_orderDG);

//     -- Lay order detail: 
        ArrayList<OrderDetail> list_order_detailDG = lgAOD.get_OrderDetail_By_OrderID(list_orderDG);

        request.setAttribute("list_order_detailDG", list_order_detailDG);

        
//        SET thong tin cho Thanh Cong:

//    -- Lay Order: 
        ArrayList<Order> list_orderTC = lgAOR.getOrderByAccountID(user.getID(), 3);

        request.setAttribute("list_orderTC", list_orderTC);

//     -- Lay order detail: 
        ArrayList<OrderDetail> list_order_detailTC = lgAOD.get_OrderDetail_By_OrderID(list_orderTC);

        request.setAttribute("list_order_detailTC", list_order_detailTC);

        
//        SET thong tin cho Da Giao Dich

//    -- Lay Order: 
        ArrayList<Order> list_orderDGD = lgAOR.getOrderByAccountID(user.getID(), 4);

        request.setAttribute("list_orderDGD", list_orderDGD);

//     -- Lay order detail: 
        ArrayList<OrderDetail> list_order_detailDGD = lgAOD.get_OrderDetail_By_OrderID(list_orderDGD);

        request.setAttribute("list_order_detailDGD", list_order_detailDGD);

//---------------------------Het lay order va orderdetail-------------------------


//      Chuyen toi account.jsp
        request.getRequestDispatcher("view/user/account/account.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
