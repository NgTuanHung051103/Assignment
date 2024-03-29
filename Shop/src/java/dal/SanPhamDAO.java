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
import model.SanPham;

public class SanPhamDAO {

    private final DBContext conn = new DBContext();

//   -------------GET-------------
    public ArrayList<SanPham> getAll() {
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
                s.setSoLuong(rs.getInt("SoLuong"));
                List_SanPhams.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_SanPhams;
    }

//    Lay Cac SanPham 1 trang
    public ArrayList<SanPham> getListByPage(ArrayList<SanPham> list, int start, int end) {
        ArrayList<SanPham> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

//     get list san pham theo tung nhom o phan index.jsp
    public ArrayList<SanPham> getListByCategory(int category) {
        ArrayList<SanPham> List_SanPhams = new ArrayList<>();
        try {
            String sql = "Select * From SanPham where NhomSP = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, category);
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

    //     su dung thanh search o trang index.jsp de search ten
    public ArrayList<SanPham> getListBySearchName(String key) {
        ArrayList<SanPham> List_SanPhams = new ArrayList<>();
        try {
            String sql = "Select * From SanPham where TenSP LIKE ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, "%" + key + "%");
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

    public ArrayList<SanPham> getListByFilter(String loai_quat, int thuong_hieu, int canh_quat, int gia) {
        ArrayList<SanPham> List_SanPhams = new ArrayList<>();
        String[] list_thuong_hieu = {"", "Senko", "Asia", "KDK"};
        String[] list_canh_quat = {"", "3", "4", "5", "6"};
        String[] list_gia = {"", "1", "2", "3", "4"};
        try {
            String sql = "select s.MaSP,s.ThuongHieu, TenSP, Img, GiaThanh, NhomSP from SanPham s Inner join TSKTQuat t on\n"
                    + " s.MaSP = t.MaSP "
                    + "where "
                    + "       t.LoaiQuat LIKE ? "
                    + "and s.ThuongHieu like  ?  "
                    + "and t.SoCanhQuat like ? "
                    + "and  s.GiaThanh > ? and s.GiaThanh < ?\n";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

//           loai quat
            if (!loai_quat.equalsIgnoreCase("all")) {
                statement.setString(1, "%" + loai_quat + "%");
            } else {
                statement.setString(1, "%%");
            }

//            thuong hieu
            if (!list_thuong_hieu[thuong_hieu].equalsIgnoreCase("")) {
                statement.setString(2, "%" + list_thuong_hieu[thuong_hieu] + "%");
            } else {
                statement.setString(2, "%%");
            }

//            canh quat
            if (!list_canh_quat[canh_quat].equalsIgnoreCase("")) {
                statement.setString(3, "%" + list_canh_quat[canh_quat] + "%");
            } else {
                statement.setString(3, "%%");
            }

//            gia tien
            if (!list_gia[gia].equalsIgnoreCase("")) {
                if (list_gia[gia].equalsIgnoreCase("1")) {
                    statement.setInt(4, 0);
                    statement.setInt(5, 300000);
                }
                if (list_gia[gia].equalsIgnoreCase("2")) {
                    statement.setInt(4, 300000);
                    statement.setInt(5, 500000);
                }
                if (list_gia[gia].equalsIgnoreCase("3")) {
                    statement.setInt(4, 500000);
                    statement.setInt(5, 1000000);
                }
                if (list_gia[gia].equalsIgnoreCase("4")) {
                    statement.setInt(4, 1000000);
                    statement.setInt(5, Integer.MAX_VALUE);
                }
            } else {
                statement.setInt(4, 0);
                statement.setInt(5, Integer.MAX_VALUE);
            }
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

    //     su dung thanh search o trang index.jsp de search ten
    public ArrayList<SanPham> getSanPhamById(int MaSP) {
        ArrayList<SanPham> List_SanPhams_by_ID = new ArrayList<>();
        try {
            String sql = "Select * From SanPham where MaSP = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, MaSP);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                SanPham s = new SanPham();
                s.setMaSP(rs.getInt("MaSP"));
                s.setTenSP(rs.getString("TenSP"));
                s.setThuongHieu(rs.getString("ThuongHieu"));
                s.setImg(rs.getString("Img"));
                s.setGiaThanh(rs.getInt("GiaThanh"));
                s.setNhomSP(rs.getInt("NhomSP"));
                s.setSoLuong(rs.getInt("SoLuong"));
                List_SanPhams_by_ID.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_SanPhams_by_ID;
    }

//    Lay So luong boi 1 san pham qua MaSP
//    INPUT: MaSP
//    OUTPUT: SoLuong
    public int getSoLuongByMaSP(int MaSP) {
        try {
            String sql = "Select SoLuong From SanPham where MaSP = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, MaSP);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return 0;
    }

//    Lay top 8 san pham duoc ban nhieu nhat
//    INPUT: null
//    OUTPUT: list trandy product
    public ArrayList<SanPham> getListTrandy() {
        ArrayList<SanPham> List_Trandy = new ArrayList<>();
        try {
            String sql = "Select TOP 8 * from SanPham \n"
                    + "ORDER BY DaBan DESC";
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
                s.setSoLuong(rs.getInt("SoLuong"));
                s.setDaBan(rs.getInt("DaBan"));
                List_Trandy.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_Trandy;
    }

// Lay top 9 theo filter mac dinh chua loadmore
// INPUT: sql da qua xu ly
// OUTPUT: list top 9 products by filter    
   public ArrayList<SanPham> getListBySQL(String sql) {
       ArrayList<SanPham> ListBySQL = new ArrayList<>();
        try {
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
                s.setSoLuong(rs.getInt("SoLuong"));
                s.setDaBan(rs.getInt("DaBan"));
                ListBySQL.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ListBySQL;
    }   
    
//    ----------------Insert------------------
//    Them 1 san pham moi vao database
//  INPUT: nhung thong in co
//  OUTPUT: null    
    public void addProduct(int MaSP, String TenSP,
            String ThuongHieu, String Img,
            int GiaThanh, int NhomSP, int SoLuong) {
        try {
            String sql = "INSERT INTO [dbo].[SanPham]\n"
                    + "           ([MaSP]\n"
                    + "           ,[TenSP]\n"
                    + "           ,[ThuongHieu]\n"
                    + "           ,[Img]\n"
                    + "           ,[GiaThanh]\n"
                    + "           ,[NhomSP]\n"
                    + "           ,[SoLuong])\n"
                    + "     VALUES\n"
                    + "           (? \n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?);";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

            statement.setInt(1, MaSP);
            statement.setString(2, TenSP);
            statement.setString(3, ThuongHieu);
            statement.setString(4, Img);
            statement.setInt(5, GiaThanh);
            statement.setInt(6, NhomSP);
            statement.setInt(7, SoLuong);

            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    ----------------Update----------------
//  UPdate thong tin san pham qua admin
//  INPUT: nhung thong in co
//  OUTPUT: null    
    public void updateByID(int MaSP, String TenSP, String Img, String ThuongHieu, int GiaThanh, int SoLuong, int NhomSP) {
        try {
            String sql = "UPDATE [dbo].[SanPham]\n"
                    + "   SET \n"
                    + "      [TenSP] = ?\n"
                    + "      ,[ThuongHieu] = ?\n"
                    + "      ,[Img] = ?\n"
                    + "      ,[GiaThanh] = ?\n"
                    + "      ,[NhomSP] = ?\n"
                    + "      ,[SoLuong] = ?\n"
                    + " WHERE MaSP = ?;";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

            statement.setString(1, TenSP);
            statement.setString(2, ThuongHieu);
            statement.setString(3, Img);
            statement.setInt(4, GiaThanh);
            statement.setInt(5, NhomSP);
            statement.setInt(6, SoLuong);
            statement.setInt(7, MaSP);

            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    Tru so luong cua nhung don hang da huy
//    INPUT: ArrayList Map MaSP_SoLuong
//    OUTPUT: null
    public void truSoLuong(int MaSP, int SoLuongOrder, int calculate) {
        int SoLuong = 0;
        if (calculate == 1) {
            SoLuong = getSoLuongByMaSP(MaSP) - SoLuongOrder;
        } else if (calculate == 2) {
            SoLuong = getSoLuongByMaSP(MaSP) + SoLuongOrder;
        }
        try {
            String sql = "UPDATE [dbo].[SanPham]\n"
                    + "   SET \n"
                    + "      [SoLuong] = ?\n"
                    + " WHERE MaSP = ?;";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

            statement.setInt(1, SoLuong);
            statement.setInt(2, MaSP);

            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    -----------------Delete--------------------
    public void deleteByID(int MaSP) {
        try {
            String sql = "delete from SanPham\n"
                    + "where MaSP = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

            statement.setInt(1, MaSP);

            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

  

}
