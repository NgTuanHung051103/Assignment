/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.SanPhamDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.SanPham;

/**
 *
 * @author NgTua
 */
public class quat extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
     
        String loai_quat_str = request.getParameter("loai_quat");
        String thuong_hieu_str = request.getParameter("thuong_hieu");
        String so_canh_quat_str = request.getParameter("so_canh_quat");
        String gia_str = request.getParameter("gia");
        
        int thuong_hieu = Integer.parseInt(thuong_hieu_str);
        int so_canh_quat = Integer.parseInt(so_canh_quat_str);
        int gia = Integer.parseInt(gia_str);
            
//        Code: xu ly de lay: listOfPage: list trang hien tai
//                                       pageNow; stt trang hien tai
//                                       numPage: tong so trang
         SanPhamDAO SPdb = new SanPhamDAO();
         
//         lay toan bo san pham dua tren filter
//          jsp: danh stt 1234 nhung trong DAO: danh stt 0123 nen phai -1 de lay phan tu trong array trong DAO
        ArrayList<SanPham> List_SanPhams = 
                     SPdb.getListByFilter(loai_quat_str,thuong_hieu-1,so_canh_quat-1,gia-1);
        
//        xu ly: pageNow: 
       int pageNow, numPerPage = 8, size = List_SanPhams.size(),
                numPage = ( size%numPerPage == 0 ? (size / numPerPage ): ( (size/numPerPage) +  1) );
       if( request.getParameter("pageNow") == null ){
            pageNow = 1; 
        } else {
            pageNow = Integer.parseInt(request.getParameter("pageNow")); 
        }
       int start, end;
        start = (pageNow - 1 ) * numPerPage;
        end =  Math.min( pageNow * numPerPage, size );
       
//        xu ly: listOfPage: list trang hien tai: 
        ArrayList<SanPham> listOfPage = SPdb.getListByPage(List_SanPhams, start, end);
        
//        End: xu ly xong lay list trang hien tai


//       set cac thong so can thiet;[ 

        request.setAttribute("loai_quat",loai_quat_str);
        request.setAttribute("thuong_hieu",thuong_hieu);
         request.setAttribute("so_canh_quat",so_canh_quat);
        request.setAttribute("gia",gia);
            
        request.setAttribute("listOfPage", listOfPage);
        request.setAttribute("pageNow", pageNow);
        request.setAttribute("numPage", numPage);
        request.getRequestDispatcher("view/user/homepage/quat.jsp").forward(request, response);
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