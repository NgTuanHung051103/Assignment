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

    public ArrayList<SanPham> getSanPhams() {
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
    public ArrayList<SanPham> getListBySearchName(String txtSearch) {
        ArrayList<SanPham> List_SanPhams = new ArrayList<>();
        try {
            String sql = "Select * From SanPham where TenSP LIKE ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, "%" + txtSearch + "%");
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
//        String[] list_loai_quat = {"", "treo",  "đứng", "trần"};
        String[] list_thuong_hieu = {"", "Senko", "Asia", "KDK"};
        String[] list_canh_quat = {"", "3", "4", "5", "6"};
        String[] list_gia = {"", "1", "2", "3", "4"};
        try {
            String sql = "select s.MaSP,s.ThuongHieu, TenSP, Img, GiaThanh, NhomSP from SanPham s Inner join TSKTQuat t on\n"
                    + " s.MaSP = t.MaSP where 1=1\n";
            if(! loai_quat.equalsIgnoreCase("all") ){
                sql += " and t.LoaiQuat like '%" +loai_quat +"%'";
            } 
            if(!list_thuong_hieu[thuong_hieu].equalsIgnoreCase("")){
                sql += " and s.ThuongHieu like '%" + list_thuong_hieu[thuong_hieu] +"%'";
            } 
            if(!list_canh_quat[canh_quat].equalsIgnoreCase("")){
                sql += " and t.SoCanhQuat like '%" +list_canh_quat[canh_quat] +"%'";
            } 
            if(!list_gia[gia].equalsIgnoreCase("")){
                if( list_gia[gia].equalsIgnoreCase("1"))
                    sql += " and s.GiaThanh <300000";
                if(list_gia[gia].equalsIgnoreCase("1"))
                    sql += " and s.GiaThanh > 300000  and s.GiaThanh <500000";
                if(list_gia[gia].equalsIgnoreCase("1"))
                    sql += " and s.GiaThanh > 500000  and s.GiaThanh <1000000";
                if( list_gia[gia].equalsIgnoreCase("1"))
                    sql += " and s.GiaThanh >1000000";
            } 
            System.out.println(sql);
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                System.out.println("1");
                SanPham s = new SanPham();
                s.setMaSP(rs.getInt("MaSP"));
                s.setTenSP(rs.getString("TenSP"));
                s.setThuongHieu(rs.getString("ThuongHieu"));
                s.setImg(rs.getString("Img"));
                s.setGiaThanh(rs.getInt("GiaThanh"));
                s.setNhomSP(rs.getInt("NhomSP"));
                List_SanPhams.add(s);
                System.out.println(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_SanPhams;
   }

}