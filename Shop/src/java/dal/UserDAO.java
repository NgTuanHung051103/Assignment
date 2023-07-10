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
//    get all row
//    INPUT: null
//    OUTPUT: arrayList all info of user
    public ArrayList<User> getAll() {
        ArrayList<User> List_Users = new ArrayList<>();
        try {
            String sql = "Select * From Users";

            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
//                Chua hieu tai sao lai hai khai bao user ben trong while
//                  Neu khai bao ben ngoai  se bi lap thang cuoi
                User user = new User();
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

//    Lay ID cua tai khoan moi nhat 
//    INPUT: null
//    OUTPUT: String ID moi nhat
    public String get_ID_Newest_User( int isAdmin ) {
        try {
            String sql = "SELECT TOP 1 ID FROM Users where isAdmin = ? ORDER BY ID DESC ";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, isAdmin);
//            statement.setInt(2, 1);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

// --------------------------UPDATE INFO TO DATABASE----------------------------------
    
//    update txt_cart boi Tk 
//    INPUT: txt_cart, Tk
//    OUTPUT: boolean true or false
    public boolean update_cart_by_Tk(String txt_cart, String Tk) {
        try {
            String sql = " UPDATE Users\n"
                    + "   SET \n"
                    + "      txtCart = ? \n"
                    + " WHERE Tk = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, txt_cart);
            statement.setString(2, Tk);
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        } catch (Exception ex) {
            System.out.println(ex);
            return false;
        }
        return true;
    }
    
//    Update thong tin user boi admin edit
    public void update_User_By_Condition(String sql) {
         try {
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (Exception ex) {
             System.out.println(ex);
        }
    }

    //--------------------------Insert new account TO DATABASE----------------------------------
//    TAO tai khoan tu form dang ky:
//    INPUT: Tai khoan ( ten dang nhap )
//                  Mat Khau
//                  ID: moi tao tu logic
//    OUTPUT: null
    public void create_Account_By_Tk(String Tk, String Mk, String ID) {
        try {
            String sql = " INSERT INTO [dbo].[Users]\n"
                    + "           ([ID]\n"
                    + "           ,[Tk]\n"
                    + "           ,[Mk]\n"
                    + "           ,[isAdmin]\n"
                    + "           )\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           )";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, ID);
            statement.setString(2, Tk);
            statement.setString(3, Mk);
            statement.setInt(4, 1);
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Khong the Tao tai khoan 1");
        } catch (Exception ex) {
            System.out.println("Khong the Tao tai khoan 2");
        }
    }

//  TAO tai khoan tu tay admin
//    INPUT: 1 object User co day du thong tin
//    OUTPUT: null
    public void create_Account_By_adAdd(User user) {
        try {
            String sql = " INSERT INTO [dbo].[Users]\n"
                    + "           ([ID]\n"
                    + "           ,[Ten]\n"
                    + "           ,[Email]\n"
                    + "           ,[DiaChi]\n"
                    + "           ,[Tk]\n"
                    + "           ,[Mk]\n"
                    + "           ,[isAdmin]\n"
                    + "           ,[SDT]\n"
                    + "           ,[txtCart]\n"
                    + "           ,[Tuoi])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, user.getID());
            statement.setString(2, user.getTen());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getDiaChi());
            statement.setString(5, user.getTk());
            statement.setString(6, user.getMk());
            statement.setInt(7, user.getIsAdmin());
            statement.setString(8, user.getSDT());
            statement.setString(9, user.getTxtCart());
            statement.setInt(10, user.getTuoi());
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Khong the Tao tai khoan 1");
        } catch (Exception ex) {
            System.out.println("Khong the Tao tai khoan 2");
        }
    }

    
//    -------------------------DELETE ACCOUNT--------------------
    public void delete_By_ID(String ID) {
        try {
            String sql = "delete from Users \n"
                    + "where ID = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

            statement.setString(1, ID);

            statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }


    
}
