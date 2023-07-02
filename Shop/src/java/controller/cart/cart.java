/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.cart;

import dal.SanPhamDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import logic.LGcartCookie;
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
        //      lay tat ca san pham tu database        
        SanPhamDAO SPdb = new SanPhamDAO();
        
        ArrayList<SanPham> list = SPdb.getAll();

        LGcartCookie lgCart = new LGcartCookie();

//        get txt_cart from cookie
        String txt_cart = lgCart.get(request, response);

//        Tao cart: list luu cac item da duoc add vao gio hang
        Cart cart = new Cart(txt_cart);

//        Lay list order co trong cart
        ArrayList< OrderDetail> listOrderDetail = cart.getCart();

//        lay so luong order co trong cart
        int n = listOrderDetail != null ? listOrderDetail.size() : 0;
        
//        set soluong - list OrderDetail
        request.setAttribute("size", n);
        request.setAttribute("data", listOrderDetail);

        request.getRequestDispatcher("view/user/homepage/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
    }

    public void updateCart(){
    }
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
