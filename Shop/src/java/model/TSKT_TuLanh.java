/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author NgTua
 */
public class TSKT_TuLanh {
    private int MaSP;
    private String KieuTu, DungTich, CongNgheTietKiemDien, CongNgheLamLanh,
                                        CongNgheKhangKhuanKhuMui,
                                        CongNgheBaoQuanThucPham,
                                         KichThuocKhoiLuong,
                                         TienIch;

    public TSKT_TuLanh() {
    }

    public TSKT_TuLanh(int MaSP, String KieuTu, String DungTich, String CongNgheTietKiemDien, String CongNgheLamLanh, String CongNgheKhangKhuanKhuMui, String CongNgheBaoQuanThucPham, String KichThuocKhoiLuong, String TienIch) {
        this.MaSP = MaSP;
        this.KieuTu = KieuTu;
        this.DungTich = DungTich;
        this.CongNgheTietKiemDien = CongNgheTietKiemDien;
        this.CongNgheLamLanh = CongNgheLamLanh;
        this.CongNgheKhangKhuanKhuMui = CongNgheKhangKhuanKhuMui;
        this.CongNgheBaoQuanThucPham = CongNgheBaoQuanThucPham;
        this.KichThuocKhoiLuong = KichThuocKhoiLuong;
        this.TienIch = TienIch;
    }

    public int getMaSP() {
        return MaSP;
    }

    @Override
    public String toString() {
        return "TSKT_TuLanh{" + "MaSP=" + MaSP + ", KieuTu=" + KieuTu + ", DungTich=" + DungTich + ", CongNgheTietKiemDien=" + CongNgheTietKiemDien + ", CongNgheLamLanh=" + CongNgheLamLanh + ", CongNgheKhangKhuanKhuMui=" + CongNgheKhangKhuanKhuMui + ", CongNgheBaoQuanThucPham=" + CongNgheBaoQuanThucPham + ", KichThuocKhoiLuong=" + KichThuocKhoiLuong + ", TienIch=" + TienIch + '}';
    }

    public void setMaSP(int MaSP) {
        this.MaSP = MaSP;
    }

    public void setKieuTu(String KieuTu) {
        this.KieuTu = KieuTu;
    }

    public void setDungTich(String DungTich) {
        this.DungTich = DungTich;
    }

    public void setCongNgheTietKiemDien(String CongNgheTietKiemDien) {
        this.CongNgheTietKiemDien = CongNgheTietKiemDien;
    }

    public void setCongNgheLamLanh(String CongNgheLamLanh) {
        this.CongNgheLamLanh = CongNgheLamLanh;
    }

    public void setCongNgheKhangKhuanKhuMui(String CongNgheKhangKhuanKhuMui) {
        this.CongNgheKhangKhuanKhuMui = CongNgheKhangKhuanKhuMui;
    }

    public void setCongNgheBaoQuanThucPham(String CongNgheBaoQuanThucPham) {
        this.CongNgheBaoQuanThucPham = CongNgheBaoQuanThucPham;
    }

    public void setKichThuocKhoiLuong(String KichThuocKhoiLuong) {
        this.KichThuocKhoiLuong = KichThuocKhoiLuong;
    }

    public void setTienIch(String TienIch) {
        this.TienIch = TienIch;
    }

    public String getKieuTu() {
        return KieuTu;
    }

    public String getDungTich() {
        return DungTich;
    }

    public String getCongNgheTietKiemDien() {
        return CongNgheTietKiemDien;
    }

    public String getCongNgheLamLanh() {
        return CongNgheLamLanh;
    }

    public String getCongNgheKhangKhuanKhuMui() {
        return CongNgheKhangKhuanKhuMui;
    }

    public String getCongNgheBaoQuanThucPham() {
        return CongNgheBaoQuanThucPham;
    }

    public String getKichThuocKhoiLuong() {
        return KichThuocKhoiLuong;
    }

    public String getTienIch() {
        return TienIch;
    }
    
    
}
