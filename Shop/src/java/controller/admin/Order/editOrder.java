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
import logic.admin.LGadminOrder;

/**
 *
 * @author ptkng
 */
public class editOrder extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            int orderID  = Integer.parseInt(request.getParameter("idEdit"));
            String diachi = request.getParameter("diachiEdit");
            String sdt = request.getParameter("sdtEdit");
            int status = Integer.parseInt(request.getParameter("categoryEdit"));
            int status_cu =  Integer.parseInt(request.getParameter("StatusEdit"));
            
            System.out.println(status );
            System.out.println(status_cu);
             LGadminOrder LGAO= new LGadminOrder();
            
//             0,1 ->234
           if(  (status_cu <= 1 || status_cu == 5 ) && status >=2 && status <=4 ){
               LGAO.duyet(orderID, status);
               LGAO.updateSoLuong(orderID, 1);
           } else if( status_cu <=4 && status_cu >=2 && status == 5){
               LGAO.duyet(orderID, status);
               LGAO.updateSoLuong(orderID, 2);
           } else {
               LGAO.duyet(orderID, status);
           }
          
           OrderDAO ORdb = new OrderDAO();
           
           ORdb.setByAdmin(orderID, diachi, sdt);
           
           response.sendRedirect("viewAllOrders");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
