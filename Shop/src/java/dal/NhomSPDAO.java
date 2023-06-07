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
import model.NhomSP;

/**
 *
 * @author NgTua
 */
public class NhomSPDAO {
      private final DBContext conn = new DBContext();
      
     public ArrayList<NhomSP> getListCategory(){
         ArrayList<NhomSP> List_NhomSP = new ArrayList<>();
        try {
            String sql = "Select * From NhomSP";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                NhomSP n = new NhomSP();
                n.setMaNhom(rs.getInt("MaNhom"));
                n.setTenNhom(rs.getString("TenNhom"));
                List_NhomSP.add(n);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_NhomSP;
     }
}
