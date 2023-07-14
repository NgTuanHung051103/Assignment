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
import model.ThongBao;

/**
 *
 * @author ptkng
 */
public class ThongBaoDAO {

    private final DBContext conn = new DBContext();

//    lay tat ca thong bao cua 1 user qua id
//    INPUT: userID
//    OUTPUT: list thongbao
    public ArrayList<ThongBao> getAllByAccountID(String id) {
        ArrayList<ThongBao> List_ThongBaos = new ArrayList<>();
        try {
            String sql = "Select * From [ThongBao]  where userID = ? ";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                ThongBao t = new ThongBao();
                t.setStt(rs.getInt(1));
                t.setUserID(rs.getString(2));
                t.setThongbao(rs.getString(3));
                List_ThongBaos.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_ThongBaos;

    }

//    them thong bao moi 
//    INPUT: userID, thongbao: noi dung
//    OUTPUT: null
    public void insertNewThongBao(String userID, String thongbao) {
        try {
            String sql = "INSERT INTO [dbo].[ThongBao]\n"
                    + "           ([userID]\n"
                    + "           ,[thongbao])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?)";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, userID);
            statement.setString(2, thongbao);
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Loi o ThongBaoDAO 1");
        } catch (Exception ex) {
            System.out.println("Loi o ThongBaoDAO 2");
        }
    }

}
