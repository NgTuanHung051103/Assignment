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
        String MaSP_str = request.getParameter("id");
        int MaSP = Integer.parseInt(MaSP_str);
        
        SanPhamDAO SPdb = new SanPhamDAO();
        ArrayList<SanPham> list = SPdb.getSanPhamById(MaSP);
        
//        Lay thanh cong San Pham
        SanPham sp = list.get(0);
        
//        Lay ma nhom SP de phan chia tskt
        int NhomSP = sp.getNhomSP();
        
        LGcateFilter logic = new LGcateFilter();
        ArrayList <TSKT_Quat> tskt = logic.getAll(sp.getMaSP(), NhomSP);
        
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
