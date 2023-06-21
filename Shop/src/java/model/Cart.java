/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

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
    public Cart(String txt, ArrayList<SanPham> list) {
        cart = new ArrayList<>();
        try {
            if (txt != null && txt.length() != 0) {
                String[] s = txt.split("/");//thay / cho dau ,
                for (String i : s) {
                    String[] n = i.split(":");
                    int id = Integer.parseInt(n[0]);
                    int quantity = Integer.parseInt(n[1]);
                    SanPham p = getProductById(id, list);
                    OrderDetail t = new OrderDetail(p, quantity, p.getGiaThanh());
                    addOrderDetail(t);
                }
            }
        } catch (NumberFormatException e) {

        }
    }

//    Them vao Cart 
//    INPUT: 1 orderDetail
//    OUTPUT: null
    private void addOrderDetail(OrderDetail t) {
//        kiem tra xem da ton tai item trong list hay chua
//        neu chua: khoi tao 1 item moi
//        if ( getItemById(t.getProduct().getId()) != null) {
//            Item m = getItemById(t.getProduct().getId());
//            m.setQuantity(m.getQuantity() + t.getQuantity());
//        } else {
//            items.add(t);
//        }
    }

    public ArrayList<OrderDetail> getCart() {
        return cart;
    }
    
    
    
    private SanPham getProductById(int id, ArrayList<SanPham> list) {
        return null;
    }

}
