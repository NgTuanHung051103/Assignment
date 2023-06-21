/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.SanPham;

public class SanPhamDAO {

    private final DBContext conn = new DBContext();

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
            if(! loai_quat.equalsIgnoreCase("all") ){
                statement.setString(1, "%"+loai_quat+"%");
            }else{
                statement.setString(1, "%%");
            }
            
//            thuong hieu
            if(!list_thuong_hieu[thuong_hieu].equalsIgnoreCase("") ){
                statement.setString(2, "%"+list_thuong_hieu[thuong_hieu]+"%");
            }else{
                statement.setString(2, "%%");
            }
            
//            canh quat
            if(!list_canh_quat[canh_quat].equalsIgnoreCase("") ){
                statement.setString(3, "%"+list_canh_quat[canh_quat]+"%");
            }else{
                statement.setString(3, "%%");
            }
            
//            gia tien
             if(!list_gia[gia].equalsIgnoreCase("")){
                 if( list_gia[gia].equalsIgnoreCase("1")){
                     statement.setInt(4, 0);
                     statement.setInt(5, 300000);
                 }
                if(list_gia[gia].equalsIgnoreCase("2")){
                     statement.setInt(4, 300000);
                     statement.setInt(5, 500000);
                }
                if(list_gia[gia].equalsIgnoreCase("3")){
                     statement.setInt(4, 500000);
                     statement.setInt(5, 1000000);
                }
                if( list_gia[gia].equalsIgnoreCase("4")){
                     statement.setInt(4, 1000000);
                     statement.setInt(5, Integer.MAX_VALUE);
                }
             } else{
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
            String MaSP_str = Integer.toString(MaSP);
            statement.setString(1, "%" + MaSP_str + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                SanPham s = new SanPham();
                s.setMaSP(rs.getInt("MaSP"));
                s.setTenSP(rs.getString("TenSP"));
                s.setThuongHieu(rs.getString("ThuongHieu"));
                s.setImg(rs.getString("Img"));
                s.setGiaThanh(rs.getInt("GiaThanh"));
                s.setNhomSP(rs.getInt("NhomSP"));
                List_SanPhams_by_ID .add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_SanPhams_by_ID ;
    }
    
}