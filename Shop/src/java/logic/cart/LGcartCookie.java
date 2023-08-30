/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.cart;

import dal.UserDAO;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Cart;
import model.CartDetail;

/**
 *
 * Xu ly nhung tac vu lien quan den them, sua, xoa txt_cart
 */
public class LGcartCookie {

//    Get txt_cart from Cookie
//    INPUT: request, response:
//    OUTPUT: txt_cart
    public String get(HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        String txt_cart = "";
        
//         Lay txt_cart da luu tu truoc 
//            Xoa txt_cart da luu vi co thay doi
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("txt_cart")) {
                    txt_cart += cookie.getValue();
                    break;
                }
            }
        }
        return txt_cart;
    }

    public void set(HttpServletRequest request, HttpServletResponse response,
            String txt_cart) {
        //                set Cookie Cart
        Cookie cookie = new Cookie("txt_cart", txt_cart);
        cookie.setMaxAge(60 * 20);
        response.addCookie(cookie);

    }

    public String add(HttpServletRequest request, HttpServletResponse response,
            String MaSP_str) {
        String txt_cart = get(request, response);

//      Them san pham vao txt_cart
//      Neu chua co San Pham nao trong txt_cart
        if (txt_cart.isEmpty()) {
            txt_cart = MaSP_str + ":" + "1";
//        Da co 1 so San Pham trong txt_cart
        } else {
//              array String tung san pham  
            String[] products = txt_cart.split("/");
            boolean isExist = false;
            for (int i = 0; i < products.length; i++) {
//                  Chia MaSP va SoLuong
                String[] product = products[i].split(":");
                if (product[0].equals(MaSP_str)) {
//                          Tang SoLuong them 1
                    int quantity = Integer.parseInt(product[1]) + 1;
//                         ghep SoLuong vao MaSP
                    products[i] = MaSP_str + ":" + Integer.toString(quantity);
//                        da tang thanh cong
                    isExist = true;
                    break;
                }
            }
//              Ghep cac phan tu thanh 1 String
            txt_cart = products[0];
            for (int i = 1; i < products.length; i++) {
                txt_cart += "/" + products[i];
            }

//              Chua ton tai San Pham do trong cart
            if (!isExist) {
                txt_cart += "/" + MaSP_str + ":" + 1;
            }
        }
        return txt_cart;
    }

    public String delete(HttpServletRequest request, HttpServletResponse response,
            String MaSP_str) {
//          Lay txt_cart
        String txt_cart = get(request, response);
        
//          Tach thanh tung san pham
        String[] products = txt_cart.split("/");

//        Them cac san pham lai tu dau
        txt_cart = "";
        for (String product : products) {
//            Neu khac san pham bi xoa thi moi + vao txt_cart
            if (!product.split(":")[0].equals(MaSP_str)) {
                txt_cart += product + "/";
            }
        }
        if ( !txt_cart.equalsIgnoreCase("")){
             int pos_last = txt_cart.length();
            return txt_cart.substring(0, pos_last - 1);
        }
        return "";
       

    }

    public boolean updateToDB(String txt_cart, String Tk) {
        UserDAO db = new UserDAO();
        boolean result = db.update_cart_by_Tk(txt_cart, Tk);
        return result;
    }
    
    public int getNumberProduct(HttpServletRequest request, HttpServletResponse response){
       
        String txt_cart = get(request, response);
        
//        Tao cart: list luu cac item da duoc add vao gio hang
        Cart cart = new Cart(txt_cart); 
        
//        Lay list order co trong cart
        ArrayList< CartDetail> listOrderDetail = cart.getCart();
        
        //        lay so luong order co trong cart
       return listOrderDetail != null ? listOrderDetail.size() : 0;
        
    }
    
    
    
    
    
}
