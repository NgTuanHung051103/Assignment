/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.admin;

import dal.OrderDAO;
import dal.OrderDetailDAO;
import dal.SanPhamDAO;
import java.util.ArrayList;
import java.util.Map;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author ptkng
 */
public class LGadminOrder {

    public ArrayList<OrderDetail> get_OrderDetail_By_OrderID(ArrayList<Order> list_order) {
        
        ArrayList< Integer> list_orderID = new ArrayList();

//        Chuyen tu list Order -> list int de luu id de dang hon
        for (Order o : list_order) {
            list_orderID.add(o.getOrderID());
        }

        OrderDetailDAO ORDdb = new OrderDetailDAO();

        return ORDdb.get_OrderDetail_By_OrderID(list_orderID);

    }

    public void duyetCXN(String OrderID, int status) {
            OrderDAO ORdb = new OrderDAO();
            
//           tang status len 2 trong database
            ORdb.duyet(OrderID, status);
            
    }

    public void truSoLuong(String OrderID) {
        OrderDetailDAO ORDdb = new OrderDetailDAO();
        
//        Vao table orderdetail lay masp va soluong
        ORDdb.truSoLuongByMaSP(OrderID);
        
        
    }
}
