/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.account;

import dal.OrderDetailDAO;
import java.util.ArrayList;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author ptkng
 */
public class LGaccountOrderDetail {

    public ArrayList<OrderDetail> get_OrderDetail_By_OrderID(ArrayList<Order> list_order) {
        
        ArrayList < Integer > list_orderID = new ArrayList();
        
//        Chuyen tu list Order -> list int de luu id de dang hon
        for( Order o : list_order ){
            list_orderID.add(o.getOrderID());
        }
        
        OrderDetailDAO ORDdb = new OrderDetailDAO();
        
        return ORDdb.get_OrderDetail_By_OrderID(list_orderID);
    }
    
}
