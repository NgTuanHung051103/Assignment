/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

/**
 *
 * @author NgTua
 */
public class TSKT_Quat {
    String LoaiQuat, DuongKinhQuat, CheDoGio, BangDieuKhien, LoaiMotor, TienIch, KichThuocKhoiLuong;
    private String MaSP;
    int SoCanhQuat;

    public TSKT_Quat(String LoaiQuat, String DuongKinhQuat, String CheDoGio, String BangDieuKhien, String LoaiMotor, String TienIch, String KichThuocKhoiLuong, String MaSP, int SoCanhQuat) {
        this.LoaiQuat = LoaiQuat;
        this.DuongKinhQuat = DuongKinhQuat;
        this.CheDoGio = CheDoGio;
        this.BangDieuKhien = BangDieuKhien;
        this.LoaiMotor = LoaiMotor;
        this.TienIch = TienIch;
        this.KichThuocKhoiLuong = KichThuocKhoiLuong;
        this.MaSP = MaSP;
        this.SoCanhQuat = SoCanhQuat;
    }

    public TSKT_Quat() {
    }

    public String getLoaiQuat() {
        return LoaiQuat;
    }

    public String getDuongKinhQuat() {
        return DuongKinhQuat;
    }

    public String getCheDoGio() {
        return CheDoGio;
    }

    public String getBangDieuKhien() {
        return BangDieuKhien;
    }

    public String getLoaiMotor() {
        return LoaiMotor;
    }

    public String getTienIch() {
        return TienIch;
    }

    public String getKichThuocKhoiLuong() {
        return KichThuocKhoiLuong;
    }

    public String getMaSP() {
        return MaSP;
    }

    public int getSoCanhQuat() {
        return SoCanhQuat;
    }

    public void setLoaiQuat(String LoaiQuat) {
        this.LoaiQuat = LoaiQuat;
    }

    public void setDuongKinhQuat(String DuongKinhQuat) {
        this.DuongKinhQuat = DuongKinhQuat;
    }

    public void setCheDoGio(String CheDoGio) {
        this.CheDoGio = CheDoGio;
    }

    public void setBangDieuKhien(String BangDieuKhien) {
        this.BangDieuKhien = BangDieuKhien;
    }

    public void setLoaiMotor(String LoaiMotor) {
        this.LoaiMotor = LoaiMotor;
    }

    public void setTienIch(String TienIch) {
        this.TienIch = TienIch;
    }

    public void setKichThuocKhoiLuong(String KichThuocKhoiLuong) {
        this.KichThuocKhoiLuong = KichThuocKhoiLuong;
    }

    public void setMaSP(String MaSP) {
        this.MaSP = MaSP;
    }

    public void setSoCanhQuat(int SoCanhQuat) {
        this.SoCanhQuat = SoCanhQuat;
    }
    
    
    
}
