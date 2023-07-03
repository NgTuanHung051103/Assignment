/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.NhomSPDAO;
import dal.SanPhamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.NhomSP;
import model.SanPham;

/**
 *
 * @author NgTua
 */
public class listAdmin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
//        HttpSession session = request.getSession();

        SanPhamDAO SPdb = new SanPhamDAO();
        System.out.println("1");
//        Lay tat ca thong tin co ban ve san pham
        ArrayList<SanPham> List_SanPhams = SPdb.getAll();
        System.out.println("2");
//        them vao session: luu list len session
        request.setAttribute("listSP", List_SanPhams);
        System.out.println("3");
        NhomSPDAO NHdb = new NhomSPDAO();
        System.out.println("4");
//        Lay cac category
        ArrayList<NhomSP> List_NhomSPs = NHdb.getListCategory();
        System.out.println("5");
//        them vao session: luu category len session
        request.setAttribute("listCategories", List_NhomSPs);
        System.out.println("6");
        request.getRequestDispatcher("view/admin/dashboard/index.jsp").forward(request, response);
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
