/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.TSKT_Quat;
import model.User;

/**
 *
 * @author NgTua
 */
public class tsktDAO {
     private final DBContext conn = new DBContext();
     
    public ArrayList<TSKT_Quat> getTSKTQuatByID(int MaSP) {
        ArrayList<TSKT_Quat> List_TSKT = new ArrayList<>();
        try {
            
            String sql = "Select * From TSKTQuat Where MaSP = ?";
            TSKT_Quat result = new TSKT_Quat();
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, MaSP);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                result.setMaSP(rs.getInt("MaSP"));
                result.setLoaiQuat(rs.getString("LoaiQuat"));
                result.setDuongKinhQuat(rs.getString("DuongKinhQuat"));
                result.setCheDoGio(rs.getString("CheDoGio"));
                result.setBangDieuKhien(rs.getString("BangDieuKhien"));
                result.setLoaiMotor(rs.getString("LoaiMotor"));
                result.setTienIch(rs.getString("TienIch"));
                result.setKichThuocKhoiLuong(rs.getString("KichThuocKhoiLuong"));
                result.setSoCanhQuat(rs.getInt("SoCanhQuat"));
                 List_TSKT.add(result);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return  List_TSKT;
    }
    
    
//    Con 3 loai san pham nua
}
