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
import model.TSKT_DieuHoa;
import model.TSKT_Quat;
import model.TSKT_Tivi;
import model.TSKT_TuLanh;

/**
 *
 * @author NgTua
 */
public class tsktDAO {

    private final DBContext conn = new DBContext();

//     -----------------GET INFO FROM DATABASE--------------------
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
        return List_TSKT;
    }

    public ArrayList<TSKT_DieuHoa> getTSKTDieuHoaByID(int MaSP) {
        ArrayList<TSKT_DieuHoa> List_TSKT = new ArrayList<>();
        try {

            String sql = "Select * From TSKTDieuHoa Where MaSP = ?";
            TSKT_DieuHoa result = new TSKT_DieuHoa();
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, MaSP);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                result.setMaSP(rs.getInt(1));
                result.setLoaiMay(rs.getString(2));
                result.setCongSuat(rs.getString(3));
                result.setPhamVi(rs.getString(4));
                result.setKhuKhuan(rs.getString(5));
                result.setCongNgheTietKiemDien(rs.getString(6));
                result.setLamLanhNhanh(rs.getString(7));
                result.setTienIch(rs.getString(8));
                result.setTieuThuDien(rs.getString(9));
                result.setDanLanh(rs.getString(10));
                result.setDanNong(rs.getString(11));
                List_TSKT.add(result);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_TSKT;
    }

    public ArrayList<TSKT_TuLanh> getTSKTTuLanhByID(int MaSP) {
        ArrayList<TSKT_TuLanh> List_TSKT = new ArrayList<>();
        try {

            String sql = "Select * From TSKTTuLanh Where MaSP = ?";
            TSKT_TuLanh result = new TSKT_TuLanh();
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, MaSP);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                result.setMaSP(rs.getInt(1));
                result.setKieuTu(rs.getString(2));
                result.setDungTich(rs.getString(3));
                result.setCongNgheTietKiemDien(rs.getString(4));
                result.setCongNgheLamLanh(rs.getString(5));
                result.setCongNgheKhangKhuanKhuMui(rs.getString(6));
                result.setCongNgheBaoQuanThucPham(rs.getString(7));
                result.setKichThuocKhoiLuong(rs.getString(8));
                result.setTienIch(rs.getString(9));
                List_TSKT.add(result);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_TSKT;

    }

    public ArrayList<TSKT_Tivi> getTSKTTiviByID(int MaSP) {
        ArrayList<TSKT_Tivi> List_TSKT = new ArrayList<>();
        try {

            String sql = "Select * From TSKTTivi Where MaSP = ?";
            TSKT_Tivi result = new TSKT_Tivi();
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, MaSP);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                result.setMaSP(rs.getInt(1));
                result.setLoaiTV(rs.getString(2));
                result.setUngDung(rs.getString(3));
                result.setCongNgheHinhAnh(rs.getString(4));
                result.setDieuKhienBangGiongNoi(rs.getString(5));
                result.setRemoteThongMinh(rs.getString(6));
                result.setPhanChieu(rs.getString(7));
                result.setKichThuoc(rs.getString(8));
                List_TSKT.add(result);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_TSKT;
    }

//    ----------------- CREATE NEW --------------

//    Tao 1 row moi voi MaSP ( chua nhap nhung thong tin sau )
//    INPUT: MaSP
//    OUTPUT: null
    public void createNewTSKTQuat(int MaSP) {
        try {
            String sql = " 	INSERT INTO [dbo].[TSKTQuat]\n"
                    + "           ([MaSP])\n"
                    + "     VALUES\n"
                    + "           (?)\n";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, MaSP);
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
    
//    Tao 1 row moi voi MaSP ( chua nhap nhung thong tin sau )
//    INPUT: MaSP
//    OUTPUT: null
    public void createNewTSKTDieuHoa(int MaSP) {
        try {
            String sql = " 	INSERT INTO [dbo].[TSKTDieuHoa]\n"
                    + "           ([MaSP])\n"
                    + "     VALUES\n"
                    + "           (?)\n";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, MaSP);
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
    
//    Tao 1 row moi voi MaSP ( chua nhap nhung thong tin sau )
//    INPUT: MaSP
//    OUTPUT: null
    public void createNewTSKTTuLanh(int MaSP) {
        try {
            String sql = " 	INSERT INTO [dbo].[TSKTTuLanh]\n"
                    + "           ([MaSP])\n"
                    + "     VALUES\n"
                    + "           (?)\n";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, MaSP);
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
    
//    Tao 1 row moi voi MaSP ( chua nhap nhung thong tin sau )
//    INPUT: MaSP
//    OUTPUT: null
    public void createNewTSKTTivi(int MaSP) {
        try {
            String sql = " 	INSERT INTO [dbo].[TSKTTivi]\n"
                    + "           ([MaSP])\n"
                    + "     VALUES\n"
                    + "           (?)\n";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, MaSP);
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

//      --------------- UPDATE INFO TO DATABASE -------------------
    public void updateTSKTQuatByID(int MaSP, String LoaiQuat,
            String DuongKinhQuat, String CheDoGio, String BangDieuKhien,
            String LoaiMotor, String TienIch, String KichThuocKhoiLuong,
            int SoCanhQuat) {
        try {
//            Tao 1 row moi
            createNewTSKTQuat(MaSP);
            
//            Update du lieu vao row vua tao
            String sql = " 	UPDATE [dbo].[TSKTQuat]\n"
                    + "	   SET [LoaiQuat] = ?\n"
                    + "		  ,[DuongKinhQuat] = ?\n"
                    + "		  ,[CheDoGio] = ?\n"
                    + "		  ,[BangDieuKhien] = ?\n"
                    + "		  ,[LoaiMotor] = ?\n"
                    + "		  ,[TienIch] = ?\n"
                    + "		  ,[KichThuocKhoiLuong] = ?\n"
                    + "		  ,[SoCanhQuat] = ?\n"
                    + "	 WHERE MaSP = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

            statement.setString(1, LoaiQuat);
            statement.setString(2, DuongKinhQuat);
            statement.setString(3, CheDoGio);
            statement.setString(4, BangDieuKhien);
            statement.setString(5, LoaiMotor);
            statement.setString(6, TienIch);
             statement.setString(7, TienIch);
            statement.setInt(8, SoCanhQuat);
            statement.setInt(9, MaSP);

            statement.executeUpdate();
        } catch (SQLException ex) {
             System.out.println("Loi tskt quat1" + ex.getMessage());
        } catch (Exception ex) {
              System.out.println("Loi tskt quat2");
        }

    }

    public void updateTSKTDieuHoa(int MaSP, String LoaiMay, 
                String CongSuat, String PhamVi, String KhuKhuan, 
                String CongNgheTietKiemDien, String LamLanhNhanh, 
                String TienIch, String TieuThuDien,
                String DanLanh, String DanNong) {
                try {
//            Tao 1 row moi
            createNewTSKTDieuHoa(MaSP);
            
//            Update du lieu vao row vua tao
            String sql = " 	UPDATE [dbo].[TSKTDieuHoa]\n"
                    + "	   SET [LoaiMay] = ?\n"
                    + "		  ,[CongSuat] = ?\n"
                    + "		  ,[PhamVi] = ?\n"
                    + "		  ,[KhuKhuan] = ?\n"
                    + "		  ,[CongNgheTietKiemDien] = ?\n"
                    + "		  ,[LamLanhNhanh] = ?\n"
                    + "		  ,[TienIch] = ?\n"
                    + "		  ,[TieuThuDien] = ?\n"
                    + "		  ,[DanLanh] = ?\n"
                     + "		  ,[DanNong] = ?\n"
                    + "	 WHERE MaSP = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

            statement.setString(1, LoaiMay);
            statement.setString(2, CongSuat);
            statement.setString(3, PhamVi);
            statement.setString(4, KhuKhuan);
            statement.setString(5, CongNgheTietKiemDien);
            statement.setString(6, LamLanhNhanh);
            statement.setString(7, TienIch);
            statement.setString(8, TieuThuDien);
            statement.setString(9, DanLanh);
            statement.setString(10, DanNong);
            statement.setInt(11, MaSP);

            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Loi tskt dieuhoa1: " + ex.getMessage());
        } catch (Exception ex) {
              System.out.println("Loi tskt dieuhoa2: ");
        }
        
    }

    public void updateTSKTTuLanh(int MaSP, String KieuTu, 
                String DungTich, String CongNgheTietKiemDien, 
                String CongNgheLamLanh, String CongNgheKhangKhuanKhuMui, 
                String CongNgheBaoQuanThucPham, 
                String KichThuocKhoiLuong, String TienIch) {
            try {
//            Tao 1 row moi
            createNewTSKTTuLanh(MaSP);
            
//            Update du lieu vao row vua tao
            String sql = " 	UPDATE [dbo].[TSKTTuLanh]\n"
                    + "	   SET [KieuTu] = ?\n"
                    + "		  ,[DungTich] = ?\n"
                    + "		  ,[CongNgheTietKiemDien] = ?\n"
                    + "		  ,[CongNgheLamLanh] = ?\n"
                    + "		  ,[CongNgheKhangKhuanKhuMui] = ?\n"
                    + "		  ,[CongNgheBaoQuanThucPham] = ?\n"
                    + "		  ,[KichThuocKhoiLuong] = ?\n"
                    + "		  ,[TienIch] = ?\n"
                    + "	 WHERE MaSP = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

            statement.setString(1, KieuTu);
            statement.setString(2, DungTich);
            statement.setString(3, CongNgheTietKiemDien);
            statement.setString(4, CongNgheLamLanh);
            statement.setString(5, CongNgheKhangKhuanKhuMui);
            statement.setString(6, CongNgheBaoQuanThucPham);
            statement.setString(7, KichThuocKhoiLuong);
            statement.setString(8, TienIch);
            statement.setInt(9, MaSP);

            statement.executeUpdate();
        } catch (SQLException ex) {
             System.out.println("Loi tskt tulanh1: " + ex.getMessage());
        } catch (Exception ex) {
              System.out.println("Loi tskt tulanh2: ");
        }
    }

    public void updateTSKTTivi(int MaSP, String LoaiTV, String UngDung, 
                String CongNgheHinhAnh, String DieuKhienBangGiongNoi, 
                String RemoteThongMinh, String PhanChieu, String KichThuoc) {
        try {
//            Tao 1 row moi
            createNewTSKTTivi(MaSP);
            
//            Update du lieu vao row vua tao
            String sql = " 	UPDATE [dbo].[TSKTTivi]\n"
                    + "	   SET [LoaiTV] = ?\n"
                    + "		  ,[UngDung] = ?\n"
                    + "		  ,[CongNgheHinhAnh] = ?\n"
                    + "		  ,[DieuKhienBangGiongNoi] = ?\n"
                    + "		  ,[RemoteThongMinh] = ?\n"
                    + "		  ,[PhanChieu] = ?\n"
                    + "		  ,[KichThuoc] = ?\n"
                    + "	 WHERE MaSP = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

            statement.setString(1, LoaiTV);
            statement.setString(2, UngDung);
            statement.setString(3, CongNgheHinhAnh);
            statement.setString(4, DieuKhienBangGiongNoi);
            statement.setString(5, RemoteThongMinh);
            statement.setString(6, PhanChieu);
            statement.setString(7, KichThuoc);
            statement.setInt(8, MaSP);

            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Loi tskt tivi1: " + ex.getMessage());
        } catch (Exception ex) {
           System.out.println("Loi tskt tivi");
        }
    }

}
