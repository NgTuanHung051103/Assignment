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
     
    public ArrayList<TSKT_Quat> getByID(int MaSP, int NhomSP) {
        ArrayList<User> List_TSKT = new ArrayList<>();
        try {
            
            String sql = "Select * From Users Where Tk = ?";
            User user = new User();
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                user.setID(rs.getString("ID"));
                user.setTen(rs.getString("Ten"));
                user.setEmail(rs.getString("Email"));
                user.setDiaChi(rs.getString("DiaChi"));
                user.setMk(rs.getString("Mk"));
                user.setTuoi(rs.getInt("Tuoi"));
                user.setTk(rs.getString("Tk"));
                user.setIsAdmin(rs.getInt("isAdmin"));
                user.setSDT(rs.getString("SDT"));
                System.out.println(user);
                 List_TSKT.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return  List_TSKT;
    }
}
