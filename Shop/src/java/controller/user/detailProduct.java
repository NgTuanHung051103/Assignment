/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.SanPhamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import logic.LGcateFilter;
import model.SanPham;
import model.TSKT_Tivi;

public class detailProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       HttpSession session = request.getSession();
       
//       Lay MaSP
        String MaSP_str = "";
        if (  request.getParameter("MaSP") == null ){
            MaSP_str = (String) session.getAttribute("MaSP");
//            session.removeAttribute("MaSP");
        } else {
            MaSP_str = request.getParameter("MaSP");
        }
        
        int MaSP = Integer.parseInt(MaSP_str);
        
        SanPhamDAO SPdb = new SanPhamDAO();
        ArrayList<SanPham> sp_list = SPdb.getSanPhamById(MaSP);
        
//        Lay thanh cong San Pham
        SanPham sp = sp_list.get(0);
        
//        Lay ma nhom SP de phan chia tskt
        int NhomSP = sp.getNhomSP();
        
        request.setAttribute("sp", sp);
        
//        Lay tskt cua san pham theo nhomSP
        LGcateFilter logic = new LGcateFilter();
        
        switch ( NhomSP ){
            
            case 1: // Quat
                 ArrayList <model.TSKT_Quat> tskt_list1 = logic.getAll1(sp.getMaSP(), NhomSP);
//          Lay thanh cong TSKT
                model.TSKT_Quat tskt1 = tskt_list1.get(0);
                request.setAttribute("tskt1", tskt1);
                request.getRequestDispatcher("view/user/homepage/detailProduct1.jsp").forward(request, response);
                break;
                
            case 2: // Dieu Hoa
                     ArrayList <model.TSKT_DieuHoa> tskt_list2 = logic.getAll2(sp.getMaSP(), NhomSP);
//          Lay thanh cong TSKT
                model.TSKT_DieuHoa tskt2 = tskt_list2.get(0);
                request.setAttribute("tskt2", tskt2);
                request.getRequestDispatcher("view/user/homepage/detailProduct2.jsp").forward(request, response);
                break;
                
              case 3: // Tu lanh
                ArrayList <model.TSKT_TuLanh> tskt_list3 = logic.getAll3(sp.getMaSP(), NhomSP);
//          Lay thanh cong TSKT
                model.TSKT_TuLanh tskt3 = tskt_list3.get(0);
                request.setAttribute("tskt3", tskt3);
                request.getRequestDispatcher("view/user/homepage/detailProduct3.jsp").forward(request, response);
                break;
                
               case 4: // Tivi
                     ArrayList <model.TSKT_Tivi> tskt_list4 = logic.getAll4(sp.getMaSP(), NhomSP);
//          Lay thanh cong TSKT
                model.TSKT_Tivi tskt4 = tskt_list4.get(0);
                request.setAttribute("tskt4", tskt4);
                request.getRequestDispatcher("view/user/homepage/detailProduct4.jsp").forward(request, response);
                break;  
                
                    
        }
        
        
        request.getRequestDispatcher("view/user/homepage/detailProduct.jsp").forward(request, response);
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
