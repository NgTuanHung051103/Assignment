/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.SanPhamDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import logic.cart.LGcartCookie;
import model.Cart;
import model.CartDetail;
import model.SanPham;

/**  mmm
 *
 * @author ptkng
 */
public class home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
//        ----Khoi tao Cookie txt cart----
//          Tao logic xu ly cart
        LGcartCookie lgCart = new LGcartCookie();

//          Them san pham moi vao cart         
         String txt_cart = lgCart.get(request, response);
         
//        Tao cart: list luu cac item da duoc add vao gio hang
        Cart cart = new Cart(txt_cart);   
        
//        Lay list order co trong cart
        ArrayList< CartDetail> listOrderDetail = cart.getCart();
        
//        lay so luong order co trong cart
        int n = listOrderDetail != null ? listOrderDetail.size() : 0;
        
//        set soluong - list CartDetail
        request.setAttribute("numberOfCart", n);    
        
        
//      get list trandy 
        SanPhamDAO SPdb = new SanPhamDAO();

        ArrayList<SanPham> listTrandy = SPdb.getListTrandy();

        request.setAttribute("listTrandy", listTrandy);

        request.getRequestDispatcher("view/user/homepage/index.jsp").forward(request, response);     
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
