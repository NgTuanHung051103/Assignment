/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import logic.account.LGaccountUser;
import logic.account.LGaccountOrder;
import logic.account.LGaccountOrderDetail;
import model.Order;
import model.OrderDetail;
import model.User;

/**
 *
 * @author ptkng
 */
public class account extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
//        SET thong tin cho Profile
        LGaccountUser lgAIU = new LGaccountUser();
        
        User user = lgAIU.getInfoUser(request, response);
        
        request.setAttribute("user", user);
        

// ----------------Lay theo order va orderdetail-------------------------       
        LGaccountOrder lgAOR = new LGaccountOrder();
         
        LGaccountOrderDetail lgAOD = new LGaccountOrderDetail();
        
//        SET thong tin cho Cho xac nhan            
        
//    -- Lay Order: 
        ArrayList <Order> list_orderCXN = lgAOR.getOrderByAccountID(user.getID() , 1 );
        
        request.setAttribute("list_orderCXN", list_orderCXN);
        
//     -- Lay order detail: 
        ArrayList<OrderDetail> list_order_detailCXN = lgAOD.get_OrderDetail_By_OrderID(list_orderCXN);
        
        request.setAttribute("list_order_detailCXN", list_order_detailCXN);

        
//        SET thong tin cho Cho lay hang:

//    -- Lay Order: 
        ArrayList <Order> list_orderCLH = lgAOR.getOrderByAccountID(user.getID() , 2 );
        
        request.setAttribute("list_orderCLH", list_orderCLH);
        
//     -- Lay order detail: 
        ArrayList<OrderDetail> list_order_detailCLH = lgAOD.get_OrderDetail_By_OrderID(list_orderCLH);
        
        request.setAttribute("list_order_detailCLH", list_order_detailCLH);
        
        
//        SET thong tin cho Da Giao:
        
//    -- Lay Order: 
        ArrayList <Order> list_orderDG = lgAOR.getOrderByAccountID(user.getID() , 2 );
        
        request.setAttribute("list_orderDG", list_orderDG);
        
//     -- Lay order detail: 
        ArrayList<OrderDetail> list_order_detailDG = lgAOD.get_OrderDetail_By_OrderID(list_orderDG);
        
        request.setAttribute("list_order_detailDG", list_order_detailDG);
        
        
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
