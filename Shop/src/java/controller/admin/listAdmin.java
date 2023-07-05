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
        
        HttpSession session = request.getSession();

        SanPhamDAO SPdb = new SanPhamDAO();
//        Lay tat ca thong tin co ban ve san pham
        ArrayList<SanPham> List_SanPhams = SPdb.getAll();
//        them vao session: luu list len session
        session.setAttribute("listSP", List_SanPhams);
        NhomSPDAO NHdb = new NhomSPDAO();
//        Lay cac category
        ArrayList<NhomSP> List_NhomSPs = NHdb.getListCategory();
//        them vao session: luu category len session
        session.setAttribute("listCategories", List_NhomSPs);
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
