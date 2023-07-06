/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic;

import dal.SanPhamDAO;
import dal.tsktDAO;

/**
 *
 * @author ptkng
 */
public class LGadminUpdate {

    public void updateSanPham(int MaSP, String TenSP, String image, String ThuongHieu, int GiaThanh, int SoLuong, int MaNhom) {
        SanPhamDAO SPdb = new SanPhamDAO();

        SPdb.updateByID(MaSP, TenSP, image, ThuongHieu, GiaThanh, SoLuong, MaNhom);
    }

    public void updateTSKTQuat( int MaSP, String LoaiQuatEdit, String DuongKinhQuatEdit,
            String CheDoGioEdit, String BangDieuKhienEdit, String LoaiMotorEdit,
            String TienIch1Edit, String KichThuocKhoiLuong1Edit, String SoCanhQuatEdit) {

        String sql = " UPDATE [dbo].[TSKTQuat]\n"
                + "   SET MaSP = " + MaSP + " ";
        
        if ( !LoaiMotorEdit.equalsIgnoreCase("") ){
            sql += ", LoaiQuat = \'" + LoaiMotorEdit + "\' ";
        } 
        if (!DuongKinhQuatEdit.equalsIgnoreCase("")){
            sql += " ,DuongKinhQuat = \'"+ DuongKinhQuatEdit + "\' ";
        }
        if ( !CheDoGioEdit.equalsIgnoreCase("") ){
            sql += ",CheDoGio = \'" + CheDoGioEdit + "\'  ";
        } 
         if ( !BangDieuKhienEdit.equalsIgnoreCase("") ){
            sql += ",BangDieuKhien = \'" + BangDieuKhienEdit + "\'  ";
        } 
          if ( !LoaiMotorEdit.equalsIgnoreCase("") ){
            sql += ",LoaiMotor = \'" + LoaiMotorEdit + "\'  ";
        } 
          if ( !TienIch1Edit.equalsIgnoreCase("") ){
            sql += ",TienIch = \'" + TienIch1Edit + "\'  ";
        } 
          if ( !KichThuocKhoiLuong1Edit.equalsIgnoreCase("") ){
            sql += ",KichThuocKhoiLuong = \'" + KichThuocKhoiLuong1Edit + "\'  ";
        } 
          if ( SoCanhQuatEdit != null ){
            sql += ",SoCanhQuat = " + SoCanhQuatEdit ;
        } 
        sql += "  WHERE MaSP = " + MaSP;
        
        System.out.println("SQL them tskt: "+sql);
        
        tsktDAO TSdb = new tsktDAO();
        
        TSdb.updateTSKTByCondition(sql);
    }
    

}
