///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
//package controller.admin.SanPham;
//
//import dal.SanPhamDAO;
//import dal.tsktDAO;
//import java.io.IOException;
//import java.io.PrintWriter;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import model.SanPham;
//import model.TSKT_Quat;
///**
// *
// * @author ptkng
// */
//public class editNewSanPham extends HttpServlet {
//
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//         int MaSP = Integer.parseInt(request.getParameter("MaSP"));
//         
//         SanPhamDAO SPdb = new SanPhamDAO();
//         
//         SanPham s = SPdb.getSanPhamById(MaSP).get(0);
//         
//         int NhomSP = s.getNhomSP();
//         
//         tsktDAO TSdb = new tsktDAO();
//         
//         switch(NhomSP){
//             case 1:
//                 TSKT_Quat tsktQuat = TSdb.getTSKTQuatByID(s.getMaSP());
//                 
//                 
//         }
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        int MaSP = Integer.parseInt(request.getParameter("MaSP"));
//        
//        
//        
//    }
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
