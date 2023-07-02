/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import logic.LGcartGetSanPhamById;

/**
 *
 * @author NgTua
 */
public class Cart {

    private ArrayList<OrderDetail> cart;

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
                    OrderDetail t = new OrderDetail(sp, soluong, sp.getGiaThanh());
                    addOrderDetailToCart(t);
                }
            }
        } catch (NumberFormatException e) {

        }
    }

//    Them vao Cart 
//    INPUT: 1 orderDetail
//    OUTPUT: null
    private void addOrderDetailToCart(OrderDetail order) {
//        kiem tra xem OrderDetail da ton tai trong list OrderDetail hay chua 
        if ( getOrderById(order.getSanPham().getMaSP()) != null) {
            OrderDetail o = getOrderById(order.getSanPham().getMaSP());
            o.setSoLuong(o.getSoLuong()+ order.getSoLuong());
        } else {
//        neu chua: khoi tao 1 OrderDetail moi
           cart.add(order);
        }
    }

    public ArrayList<OrderDetail> getCart() {
        return cart;
    }
    
    
    
//    Truy cap vao SanPhamDAO de lay 1 san pham dua tren MaSP
//    INPUT: id cua 1 sanpham
//   OUTPUT: null or SanPham
    private SanPham getSanPhamById(int id) {
        LGcartGetSanPhamById logic = new LGcartGetSanPhamById();
        return logic.getSanPhamById(id);
    }

    
//    Lay OrderDetail trong cart bang MaSP
//    INPUT: int MaSP
//    OUTPUT: null or OrderDetail
    private OrderDetail getOrderById(int MaSP) {
        for( OrderDetail o : cart ){
            if( o.getSanPham().getMaSP() == MaSP){
                return o; 
            }
        }
        return null;
    }

}
