/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.SanPhamDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Cart;
import model.OrderDetail;
import model.SanPham;

/**
 *
 * @author NgTua
 */
public class cart extends HttpServlet {

//  khoi tao nhung gia tri ban dau cart khi bam vao gio hang
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("view/user/homepage/cart.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//      lay tat ca san pham tu database        
        SanPhamDAO SPdb = new SanPhamDAO();
        ArrayList<SanPham> list = SPdb.getAll();

        Cookie[] cookies = request.getCookies();
        String txt_cart = "";

//        set txt_cart ( co the dua vao logic -> de sau )
//        Bang cach: xoa cookie cart cu ( neu co ) de sua thanh cookie cart moi
        if (cookies != null) {
            for (Cookie o : cookies) {
                if (o.getName().equals("txt_cart")) {
                    txt_cart += o.getValue();
//                    o.setMaxAge(0);
//                    response.addCookie(o);
                }
            }
        }

//        Tao cart: list luu cac item da duoc add vao gio hang
        Cart cart = new Cart(txt_cart);

//        Lay list order co trong cart
        ArrayList< OrderDetail> listOrderDetail = cart.getCart();

//        lay so luong order co trong cart
        int n = listOrderDetail != null ? listOrderDetail.size() : 0;

//        set soluong - list OrderDetail
        request.setAttribute("size", n);
        request.setAttribute("listOrderDetail", listOrderDetail);
        
        request.getRequestDispatcher("view/user/homepage/cart.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
