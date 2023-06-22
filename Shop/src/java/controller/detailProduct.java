/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.SanPhamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import logic.LGcateFilter;
import model.SanPham;

public class detailProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String MaSP_str = request.getParameter("MaSP");
        int MaSP = Integer.parseInt(MaSP_str);
        
        SanPhamDAO SPdb = new SanPhamDAO();
        ArrayList<SanPham> sp_list = SPdb.getSanPhamById(MaSP);
        System.out.println(sp_list.size());
        
//        Lay thanh cong San Pham
        SanPham sp = sp_list.get(0);
        System.out.println(sp);
//        Lay ma nhom SP de phan chia tskt
        int NhomSP = sp.getNhomSP();
        
//        Lay tskt cua san pham theo nhomSP
        LGcateFilter logic = new LGcateFilter();
        
//        Quat
        if( NhomSP == 1){
             ArrayList <model.TSKT_Quat> tskt_list = logic.getAll(sp.getMaSP(), NhomSP);
//        Lay thanh cong TSKT
            model.TSKT_Quat tskt = tskt_list.get(0);
            request.setAttribute("tskt", tskt);
            System.out.println(tskt);
        }
        
        request.setAttribute("sp", sp);
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
