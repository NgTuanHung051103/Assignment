/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

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
        System.out.println("1");
//        int loai_quat = Integer.parseInt(loai_quat_str);
        int thuong_hieu = Integer.parseInt(thuong_hieu_str);
        int so_canh_quat = Integer.parseInt(so_canh_quat_str);
        int gia = Integer.parseInt(gia_str);
        
//        String[] list_loai_quat = {"", "treo",  "đứng", "trần"};
        String[] list_thuong_hieu = {"", "Senko", "Asia", "KDK"};
        String[] list_canh_quat = {"", "3", "4", "5", "6"};
        String[] list_gia = {"", "1", "2", "3", "4"};
            
//        Code: xu ly de lay: listOfPage: list trang hien tai
//                                       pageNow; stt trang hien tai
//                                       numPage: tong so trang
         SanPhamDAO SPdb = new SanPhamDAO();
         
        ArrayList<SanPham> List_SanPhams = 
        SPdb.getListByFilter(loai_quat_str,thuong_hieu-1,so_canh_quat-1,gia-1);
        
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
       
        ArrayList<SanPham> listOfPage = SPdb.getListByPage(List_SanPhams, start, end);
        
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