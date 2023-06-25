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
import model.User;

/**
 *
 * @author NgTua á ?
 */
public class UserDAO {

    private final DBContext conn = new DBContext();

//    ----------------------GET INFO FROM DATABASE-------------------------
//    get info of user by Tk
//    input: tai khoan
//    output: all info of tai khoan
//                  but this type: list
    public ArrayList<User> get_Info_User_Login(String Tk) {
        ArrayList<User> List_Users = new ArrayList<>();
        try {
            String sql = "Select * From Users Where Tk = ?";
            User user = new User();
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, Tk);
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
                user.setTxtCart(rs.getString("txtCart"));
                List_Users.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_Users;
    }

//     lay tat ca tai khoan
//     input: null
//     output: list tai khoan
    public ArrayList<String> get_Tk_Users() {
        ArrayList<String> List_Tk_Users = new ArrayList<String>();
        try {
            String sql = "Select Tk From Users";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                List_Tk_Users.add(rs.getString("Tk"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_Tk_Users;
    }

//    lay tkhoan khi da co mkhau
//    input: tai khoan 
//    output: mat khau
    public String get_Mk_ByTk(String Tk) {
        try {
            String sql = "Select Mk From Users Where Tk = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, Tk);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getString("Mk");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

// --------------------------UPDATE INFO TO DATABASE----------------------------------
    public boolean update_cart_by_Tk(String txt_cart, String Tk) {
        try {
            String sql = " UPDATE Users\n"
                    + "   SET \n"
                    + "      txtCart = ? \n"
                    + " WHERE Tk = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, txt_cart);
            statement.setString(2,  Tk );
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        } catch (Exception ex) {
            return false;
        }
        return true;
    }

}
