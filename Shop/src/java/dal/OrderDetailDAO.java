/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.NhomSP;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author ptkng
 */
public class OrderDetailDAO {

    private final DBContext conn = new DBContext();

//    -----------------GET----------------------
//    Get OrderDetail theo OrderID
//    INPUT: list int orderID
//    OUTPUT: list OrderDetail
    public ArrayList<OrderDetail> get_OrderDetail_By_OrderID(ArrayList<Integer> list_orderID) {
        ArrayList< OrderDetail> list_order_details = new ArrayList();
        for (int id : list_orderID) {
            try {
                String sql = "Select * From OrderDetail Where OrderID = ? ";
                PreparedStatement statement = conn.getConnection().prepareStatement(sql);
                statement.setInt(1, id);
                ResultSet rs = statement.executeQuery();
                while (rs.next()) {
                    OrderDetail ord = new OrderDetail(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6));
                    list_order_details.add(ord);
                }
            } catch (SQLException ex) {
                Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
            } catch (Exception ex) {
                Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list_order_details;
    }
 

     public void updateSoLuongByMaSP(int OrderID, int calculate) {
         
            try {
                String sql = "Select MaSP, SoLuong  From OrderDetail Where OrderID = ? ";
                PreparedStatement statement = conn.getConnection().prepareStatement(sql);
                statement.setInt(1, OrderID);
                ResultSet rs = statement.executeQuery();
                while (rs.next()) {
                    SanPhamDAO SPdb = new SanPhamDAO();
                    SPdb.truSoLuong(rs.getInt(1), rs.getInt(2), calculate);
                }
            } catch (SQLException ex) {
                System.out.println(ex);
            } catch (Exception ex) {
                System.out.println(ex);
            }
    }
    
    
    

//      ---------------INSERT---------------    
//    Insert new OrderDetail:
//    INPUT: arraylist cac object OrderDetail da co full info
//    OUTPUT: null
    public void insertOrderDetailByOrder(ArrayList<OrderDetail> list_OrD) {

//        Su dung vong lap for: de tach cac OrderDetail theo tung Order ID
        for (OrderDetail OrD : list_OrD) {
            try {
                String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                        + "           ([OrderID]\n"
                        + "           ,[MaSP]\n"
                        + "           ,[SoLuong]\n"
                        + "           ,[Img]\n"
                        + "           ,[GiaThanh]\n"
                        + "           ,[TenSP])\n"
                        + "     VALUES\n"
                        + "           (?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?)";
                PreparedStatement statement = conn.getConnection().prepareStatement(sql);

                statement.setInt(1, OrD.getOrderID());
                statement.setInt(2, OrD.getMaSP());
                statement.setInt(3, OrD.getSoLuong());
                statement.setString(4, OrD.getImg());
                statement.setInt(5, OrD.getGiaThanh());
                statement.setString(6, OrD.getTenSP());

                statement.executeUpdate();

            } catch (SQLException ex) {
                Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
            } catch (Exception ex) {
                Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

   


}
