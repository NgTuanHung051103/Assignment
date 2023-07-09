/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.thanhtoan;

import dal.OrderDetailDAO;
import dal.SanPhamDAO;
import java.util.ArrayList;
import model.CartDetail;
import model.OrderDetail;
import model.SanPham;

/**
 *
 * @author ptkng
 */
public class LGttInsertOrD {

        SanPhamDAO SPdb = new SanPhamDAO();
        
    public void insertToOrD(int OrderID, String Order_txt) {
        
        OrderDetailDAO OrDdb = new OrderDetailDAO();
        
        ArrayList<OrderDetail> list_OrD = new ArrayList();
        
//        Xu ly Order_txt: tach thanh tung object rieng:
//                             Sau do 
            String[] s = Order_txt.split("/");
            for (String i : s) {
                String[] n = i.split(":");
                int MaSP = Integer.parseInt(n[0]);
                
                SanPham sp = SPdb.getSanPhamById(MaSP).get(0);
                
                int SoLuong = Integer.parseInt(n[1]);
                
                OrderDetail OrD = new OrderDetail(OrderID, MaSP, SoLuong, sp.getImg(), sp.getGiaThanh(), sp.getTenSP());
                
                list_OrD.add(OrD);
            }
        
        OrDdb.insertOrderDetailByOrder(list_OrD);
    }
    
}
