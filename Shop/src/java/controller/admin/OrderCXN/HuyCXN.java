/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin.OrderCXN;

import dal.ThongBaoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
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
        LGAO.duyet(OrderID, 0);
        
//          Tang trong database: Truy cap vao table OrderDetail de lay so luong
//              2: tang
//             LGAO.updateSoLuong(OrderID, 2); 

//      Lay thong bao:
        String thongbao = request.getParameter("thongbao");
        
        String userID = request.getParameter("AccountID");
        
        Date date = (LGAO.getOrderByID(Integer.parseInt(OrderID))).getOrderDate();
        
        String date_str = date.toString();
        
        ThongBaoDAO TBdb = new ThongBaoDAO();
        
        
        
        TBdb.insertNewThongBao(userID, thongbao, date_str);
        
        response.sendRedirect("adOrderCXN");
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
