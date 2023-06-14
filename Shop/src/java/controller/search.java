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
import model.SanPham;

/**
 *
 * @author NgTua
 */
public class search extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        get key word from search.jsp
        String key = request.getParameter("key");
        
//        get all product from database by search keyword
        SanPhamDAO SPdb = new SanPhamDAO();
        ArrayList<SanPham> List_SanPhams = SPdb.getListBySearchName(key);
        
//        Code: xu ly de lay: listOfPage: list trang hien tai
//                                       pageNow; stt trang hien tai
//                                       numPage: tong so trang
        int pageNow, numPerPage = 8, size = List_SanPhams.size(),
                numPage = (size % numPerPage == 0 ? (size / numPerPage) : ((size / numPerPage) + 1));
        if (request.getParameter("pageNow") == null) {
            pageNow = 1;
        } else {
            pageNow = Integer.parseInt(request.getParameter("pageNow"));
        }
        int start, end;
        start = (pageNow - 1) * numPerPage;
        end = Math.min(pageNow * numPerPage, size);

//        get list product of one page from searched list
        ArrayList<SanPham> listOfPage = SPdb.getListByPage(List_SanPhams, start, end);

//       set cac thong so can thiet;[
        request.setAttribute("key", key);
        request.setAttribute("listOfPage", listOfPage);
        request.setAttribute("pageNow", pageNow);
        request.setAttribute("numPage", numPage);

        request.getRequestDispatcher("view/user/homepage/search.jsp").forward(request, response);

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
