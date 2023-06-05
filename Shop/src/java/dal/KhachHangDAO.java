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


/**
 *
 * @author NgTua
 */
public class KhachHangDAO {
    private final DBContext conn = new DBContext();
    
    public ArrayList<String> get_Tk_KhachHangs() {
          ArrayList<String> List_Tk_KhachHangs = new ArrayList<String>();
        try {
            String sql = "Select tk From KhachHang";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                List_Tk_KhachHangs.add(rs.getString("Tk"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(KhachHangDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(KhachHangDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_Tk_KhachHangs;
    }
  
    
    
    
}
