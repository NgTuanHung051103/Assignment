/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import logic.cart.LGcartGetSanPhamById;

/**
 *
 * @author NgTua
 */
public class Cart {

    private ArrayList<CartDetail> cart;

    public Cart() {
        cart = new ArrayList<>();
    }

//    Constructor: khoi tao list cart dua tren qua khu 
//    INPUT: txt: item da them vao gio hang truoc day
//                  list: tat ca san pham
//      OUTPUT: null ( da khoi tao 1 doi tuong luu nhung item da them vao cart )
    public Cart(String txt) {
        cart = new ArrayList<>();
        try {
            if (txt != null && txt.length() != 0) {
                String[] s = txt.split("/");//thay / cho dau ,
                for (String i : s) {
                    String[] n = i.split(":");
                    int id = Integer.parseInt(n[0]);
                    int soluong = Integer.parseInt(n[1]);
                    SanPham sp = getSanPhamById(id);
                    CartDetail t = new CartDetail(sp, soluong, sp.getGiaThanh());
                    addCartDetailToCart(t);
                }
            }
        } catch (NumberFormatException e) {

        }
    }

//    Them vao Cart 
//    INPUT: 1 orderDetail
//    OUTPUT: null
    private void addCartDetailToCart(CartDetail order) {
//        kiem tra xem CartDetail da ton tai trong list CartDetail hay chua 
        if ( getCartDetailById(order.getSanPham().getMaSP()) != null) {
            CartDetail o = getCartDetailById(order.getSanPham().getMaSP());
            o.setSoLuong(o.getSoLuong()+ order.getSoLuong());
        } else {
//        neu chua: khoi tao 1 CartDetail moi
           cart.add(order);
        }
    }

    public ArrayList<CartDetail> getCart() {
        return cart;
    }
    
    
    
//    Truy cap vao SanPhamDAO de lay 1 san pham dua tren MaSP
//    INPUT: id cua 1 sanpham
//   OUTPUT: null or SanPham
    private SanPham getSanPhamById(int id) {
        LGcartGetSanPhamById logic = new LGcartGetSanPhamById();
        return logic.getSanPhamById(id);
    }

    
//    Lay CartDetail trong cart bang MaSP
//    INPUT: int MaSP
//    OUTPUT: null or CartDetail
    private CartDetail getCartDetailById(int MaSP) {
        for( CartDetail o : cart ){
            if( o.getSanPham().getMaSP() == MaSP){
                return o; 
            }
        }
        return null;
    }

}
