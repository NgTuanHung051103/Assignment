/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.account;

import dal.OrderDAO;
import java.util.ArrayList;
import model.Order;

/**
 *
 * @author ptkng
 */
public class LGaccountOrder {

    public ArrayList<Order> getOrderByAccountID(String AccountID, int status) {
        OrderDAO ORdb = new OrderDAO();
        
        return ORdb.get_By_UserID(AccountID, status);
    }
    
}
