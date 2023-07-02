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
        return  List_TSKT;
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
        return  List_TSKT;
        
        
        
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
        return  List_TSKT;
    }
    
    

}
