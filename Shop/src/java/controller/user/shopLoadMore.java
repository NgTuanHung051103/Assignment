/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.SanPhamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import logic.user.LGuserShop;
import model.SanPham;

/**
 *
 * @author ptkng
 */
public class shopLoadMore extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String[] arr_price = request.getParameterValues("price");
        String[] arr_category = request.getParameterValues("category");

        int priceValues[] = new int[6];
        int categoryValues[] = new int[5];

        LGuserShop LGUS = new LGuserShop();
        String sql = "";

        String price = arr_price[0].substring(1, arr_price[0].length() - 1); // Loại bỏ dấu ngoặc vuông
        arr_price = price.split(","); // Tách chuỗi thành mảng các chuỗi con

        int[] PRICE = new int[arr_price.length];

        for (int i = 0; i < arr_price.length; i++) {
            PRICE[i] = Integer.parseInt(arr_price[i]);
        }

        String category = arr_category[0].substring(1, arr_category[0].length() - 1); // Loại bỏ dấu ngoặc vuông
        arr_category = category.split(","); // Tách chuỗi thành mảng các chuỗi con

        int[] CATEGORY = new int[arr_category.length];

        for (int i = 0; i < arr_category.length; i++) {
            CATEGORY[i] = Integer.parseInt(arr_category[i]);
        }
//        Tu doan code tren: ta co 2 array: price , category: luu nhung lua chon

        int count = Integer.parseInt(request.getParameter("count"));
        
//          Tao cau lenh sql
        sql = LGUS.createSQL(PRICE, CATEGORY, count);
        
//      get list by filter          
        SanPhamDAO SPdb = new SanPhamDAO();

        ArrayList<SanPham> list = SPdb.getListBySQL(sql);

        PrintWriter out = response.getWriter();

        for (SanPham s : list) {
          out.println("<div class=\"sanpham col-lg-4 col-md-6 col-sm-12 pb-1\">\n"
                    + "                            <div class=\"card product-item border-0 mb-4\">\n"
                    + "                            <div class=\"card-header product-img position-relative overflow-hidden bg-transparent border p-0\">\n"
                    + "                                <img class=\"img-fluid w-100\" src=\"" + s.getImg() + "\" alt=\"\">\n"
                    + "                            </div>\n"
                    + "                            <div class=\"card-body border-left border-right text-center p-0 pt-4 pb-3\">\n"
                    + "                                <h6 class=\"text-truncate mb-3\">" + s.getTenSP() + "</h6>\n"
                    + "                                <div class=\"d-flex justify-content-center\">\n"
                    + "                                    <h6>" + s.getGiaThanh() + "VNÐ</h6><h6 class=\"text-muted ml-2\"><del>" + s.getGiaThanh() + "VNÐ</del></h6>\n"
                    + "                                </div>\n"
                    + "                            </div>\n"
                    + "                            <div class=\"card-footer d-flex justify-content-between bg-light border\">\n"
                    + "                                   <button onclick=\"detailProduct("+s.getMaSP()+")\" class=\"btn btn-sm text-dark p-0\">\n"
                    + "                                    <i class=\"fas fa-eye text-primary mr-1\"></i>View Detail\n"
                    + "                                </button>\n"
                    + "\n"
                    + "                                <button onclick=\"addToCart("+s.getMaSP()+")\" class=\"btn btn-sm text-dark p-0\">\n"
                    + "                                     <i class=\"fas fa-shopping-cart text-primary mr-1\"></i>Add To Cart\n"
                    + "                                </button>"
                    + "                            </div>\n"
                    + "                        </div>\n"
                    + "                        </div>");
        }

    }

}
