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

    public void duyet(int OrderID, int status) {
            OrderDAO ORdb = new OrderDAO();
            
//          status: 2 : dang ship
//                      0: da huy
            ORdb.duyet(OrderID, status);
            
    }
//1 giam 2 tang
    public void updateSoLuong(int OrderID, int calculate) {
        OrderDetailDAO ORDdb = new OrderDetailDAO();
        
//        Vao table orderdetail lay masp va soluong
        ORDdb.updateSoLuongByMaSP(OrderID, calculate);
    }
    
    public Order getOrderByID(int orderID){
        OrderDAO ODdb = new OrderDAO();
        
        return ODdb.get_By_OrderID(orderID);
    }
}
