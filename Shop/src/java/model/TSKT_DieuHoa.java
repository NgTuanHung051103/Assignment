/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author NgTua
 */
public class TSKT_DieuHoa {
    private int MaSP;
    private String LoaiMay, CongSuat, PhamVi, KhuKhuan, CongNgheTietKiemDien, 
                            LamLanhNhanh, TienIch, TieuThuDien, DanLanh, DanNong;

    public TSKT_DieuHoa() {
    }

    public TSKT_DieuHoa(int MaSP, String LoaiMay, String CongSuat, String PhamVi, String KhuKhuan, String CongNgheTietKiemDien, String LamLanhNhanh, String TienIch, String TieuThuDien, String DanLanh, String DanNong) {
        this.MaSP = MaSP;
        this.LoaiMay = LoaiMay;
        this.CongSuat = CongSuat;
        this.PhamVi = PhamVi;
        this.KhuKhuan = KhuKhuan;
        this.CongNgheTietKiemDien = CongNgheTietKiemDien;
        this.LamLanhNhanh = LamLanhNhanh;
        this.TienIch = TienIch;
        this.TieuThuDien = TieuThuDien;
        this.DanLanh = DanLanh;
        this.DanNong = DanNong;
    }

    public int getMaSP() {
        return MaSP;
    }

    public String getLoaiMay() {
        return LoaiMay;
    }

    public String getCongSuat() {
        return CongSuat;
    }

    public String getPhamVi() {
        return PhamVi;
    }

    public String getKhuKhuan() {
        return KhuKhuan;
    }

    public String getCongNgheTietKiemDien() {
        return CongNgheTietKiemDien;
    }

    public String getLamLanhNhanh() {
        return LamLanhNhanh;
    }

    public String getTienIch() {
        return TienIch;
    }

    public String getTieuThuDien() {
        return TieuThuDien;
    }

    public String getDanLanh() {
        return DanLanh;
    }

    public String getDanNong() {
        return DanNong;
    }

    public void setMaSP(int MaSP) {
        this.MaSP = MaSP;
    }

    public void setLoaiMay(String LoaiMay) {
        this.LoaiMay = LoaiMay;
    }

    public void setCongSuat(String CongSuat) {
        this.CongSuat = CongSuat;
    }

    public void setPhamVi(String PhamVi) {
        this.PhamVi = PhamVi;
    }

    public void setKhuKhuan(String KhuKhuan) {
        this.KhuKhuan = KhuKhuan;
    }

    public void setCongNgheTietKiemDien(String CongNgheTietKiemDien) {
        this.CongNgheTietKiemDien = CongNgheTietKiemDien;
    }

    public void setLamLanhNhanh(String LamLanhNhanh) {
        this.LamLanhNhanh = LamLanhNhanh;
    }

    public void setTienIch(String TienIch) {
        this.TienIch = TienIch;
    }

    public void setTieuThuDien(String TieuThuDien) {
        this.TieuThuDien = TieuThuDien;
    }

    public void setDanLanh(String DanLanh) {
        this.DanLanh = DanLanh;
    }

    public void setDanNong(String DanNong) {
        this.DanNong = DanNong;
    }

    @Override
    public String toString() {
        return "TSKT_DieuHoa{" + "MaSP=" + MaSP + ", LoaiMay=" + LoaiMay + ", CongSuat=" + CongSuat + ", PhamVi=" + PhamVi + ", KhuKhuan=" + KhuKhuan + ", CongNgheTietKiemDien=" + CongNgheTietKiemDien + ", LamLanhNhanh=" + LamLanhNhanh + ", TienIch=" + TienIch + ", TieuThuDien=" + TieuThuDien + ", DanLanh=" + DanLanh + ", DanNong=" + DanNong + '}';
    }

    
}
