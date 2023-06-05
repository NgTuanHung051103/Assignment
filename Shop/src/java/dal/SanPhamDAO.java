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
import model.SanPham;

public class SanPhamDAO {
    private final DBContext conn = new DBContext();
    
     public ArrayList<SanPham> getSanPhams() {
        ArrayList<SanPham> List_SanPhams = new ArrayList<>();
        try {
            String sql = "Select * From SanPham";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                SanPham s = new SanPham();
                s.setMaSP(rs.getInt("MaSP"));
                s.setTenSP(rs.getString("TenSP"));
                s.setThuongHieu(rs.getString("ThuongHieu"));
                 s.setImg(rs.getString("Img"));
                s.setGiaThanh(rs.getInt("GiaThanh"));
                s.setNhomSP(rs.getInt("NhomSP"));
                List_SanPhams.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_SanPhams;
    }
}
