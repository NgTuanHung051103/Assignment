/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.SanPhamDAO;
import java.io.IOException;
import java.io.PrintWriter;
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
public class list extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          SanPhamDAO SPdb = new SanPhamDAO();
             ArrayList<SanPham> List_SanPhams = SPdb.getSanPhams();
             System.out.println("1");
             if(List_SanPhams == null)
        {
            PrintWriter out = response.getWriter();
            out.println("Cannot get the data");    
        }
        else
        {
            System.out.println("2");
            request.setAttribute("listP", List_SanPhams);
            request.getRequestDispatcher("view/user/homepage/index.jsp").forward(request, response);
        }
    }
//request.getRequestDispatcher("view/common/product.jsp").forward(request, response);
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            SanPhamDAO db = new SanPhamDAO();
             ArrayList<SanPham> List_SanPhams = db.getSanPhams();
             System.out.println("1");
             if(List_SanPhams == null)
        {
            PrintWriter out = response.getWriter();
            out.println("Cannot get the data");    
        }
        else
        {
            System.out.println("2");
            request.setAttribute("listP", List_SanPhams);
            request.getRequestDispatcher("view/user/homepage/index.jsp").forward(request, response);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
