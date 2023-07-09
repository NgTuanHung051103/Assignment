/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import logic.thanhtoan.LGttInsertOrD;
import model.OrderDetail;
import model.Order;


public class thanhtoan extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
  
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String AccountID = request.getParameter("ID");
        String Order_txt = request.getParameter("order_txt");
        int TotalPrice = Integer.parseInt(request.getParameter("TotalPrice"));
        String Adress = request.getParameter("DiaChiInput");
        String EmailInput = request.getParameter("EmailInput");
        String SDTInput = request.getParameter("SDTInput");
        int httt = Integer.parseInt(request.getParameter("hinhthucthanhtoan"));
        
        OrderDAO ORdb = new OrderDAO();
        
//       Tao id moi = id cuoi cung + 1
        int OrderID = ORdb.getAll().get(ORdb.getAll().size()-1).getOrderID() + 1;
        
//        Lay Date ngay hom nay: 
        long millis=System.currentTimeMillis();  
        java.sql.Date date=new java.sql.Date(millis);  
 
//        Tao 1 order moi
        Order order = new Order(OrderID, AccountID,  date, Adress, TotalPrice, 1, Order_txt, EmailInput, SDTInput, httt);
        
//        Them order vao database
        ORdb.insertOrders(order);
        
        LGttInsertOrD lgTTOrD = new  LGttInsertOrD();
        
        lgTTOrD.insertToOrD(OrderID, Order_txt);
        
        
        request.setAttribute("mess", "Ban da dat hang thanh cong");
         request.getRequestDispatcher("view/user/homepage/dathangthanhcong.jsp").forward(request, response);
             
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
