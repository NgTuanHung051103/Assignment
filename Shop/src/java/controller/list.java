/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.NhomSPDAO;
import dal.SanPhamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import logic.LGcartCookie;
import model.Cart;
import model.NhomSP;
import model.OrderDetail;
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
        NhomSPDAO nSPdb = new NhomSPDAO();

//      ------ Phan trang va nhom san pham -----        
//        Neu chua chon nhom san pham thi mac dinh = 1
       String nhomSP_ID_str = request.getParameter("nhomSP_ID");
       int nhomSP_ID;
       if(nhomSP_ID_str == null){
           nhomSP_ID = 1;
       } else {
           nhomSP_ID = Integer.parseInt(nhomSP_ID_str);
       }
       ArrayList<NhomSP> List_NhomSP = nSPdb.getListCategory();
       
//         lay full san pham theo NhomSP ( category )
         ArrayList<SanPham> List_SanPhams = SPdb.getListByCategory(nhomSP_ID);
        
//        page: trang hien tai va numPerPage: so sp moi trang
        int  pageNow, numPerPage = 6, 
                size = List_SanPhams.size(),
//                so trang
                numPage = ( size%6 == 0 ? (size / 6 ): ( (size/6) + 1) );
        
//        String pageNow_str = request.getParameter("pageNow");
        if( request.getParameter("pageNow") == null ){
            pageNow = 1; 
        } else {
            pageNow = Integer.parseInt(request.getParameter("pageNow")); 
        }
        int start, end;
        start = (pageNow - 1 ) * numPerPage;
        end =  Math.min( pageNow * numPerPage, size );
        
//        lay list trong trang do
       ArrayList<SanPham> listOfPage = SPdb.getListByPage(List_SanPhams, start, end);
        request.setAttribute("data",List_NhomSP);
        request.setAttribute("nhomSP_ID",nhomSP_ID);
        request.setAttribute("listOfPage", listOfPage);
        request.setAttribute("pageNow", pageNow);
        request.setAttribute("numPage", numPage);
        
//      ------Ket thuc  Phan trang va nhom san pham -----          
       
    
//        ----Khoi tao Cookie txt cart----

//          Tao logic xu ly cart
        LGcartCookie lgCart = new LGcartCookie();

//          Them san pham moi vao cart         
         String txt_cart = lgCart.get(request, response);

//        Tao cart: list luu cac item da duoc add vao gio hang
        Cart cart = new Cart(txt_cart);   
        
//        Lay list order co trong cart
        ArrayList< OrderDetail> listOrderDetail = cart.getCart();
        
//        lay so luong order co trong cart
        int n = listOrderDetail != null ? listOrderDetail.size() : 0;
        
//        set soluong - list OrderDetail
        request.setAttribute("size", n);        
        
//        -----Ket thuc Cookie txt cart-----

        request.getRequestDispatcher("view/user/homepage/index.jsp").forward(request, response);      
    }
//request.getRequestDispatcher("view/common/product.jsp").forward(request, response);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SanPhamDAO db = new SanPhamDAO();
        ArrayList<SanPham> List_SanPhams = db.getAll();
        System.out.println("1");
        if (List_SanPhams == null) {
            PrintWriter out = response.getWriter();
            out.println("Cannot get the data");
        } else {
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
