/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author NgTua
 */
public class SanPham {
    private int MaSP, GiaThanh, NhomSP;
    private String TenSP, ThuongHieu, Img;

    public SanPham(int MaSP, int GiaThanh, int NhomSP, String TenSP, String ThuongHieu, String Img) {
        this.MaSP = MaSP;
        this.GiaThanh = GiaThanh;
        this.NhomSP = NhomSP;
        this.TenSP = TenSP;
        this.ThuongHieu = ThuongHieu;
        this.Img = Img;
    }

    public int getMaSP() {
        return MaSP;
    }

    public int getGiaThanh() {
        return GiaThanh;
    }

    public int getNhomSP() {
        return NhomSP;
    }

    public String getTenSP() {
        return TenSP;
    }

    public SanPham() {
    }

    public String getThuongHieu() {
        return ThuongHieu;
    }

    public String getImg() {
        return Img;
    }

    public void setMaSP(int MaSP) {
        this.MaSP = MaSP;
    }

    public void setGiaThanh(int GiaThanh) {
        this.GiaThanh = GiaThanh;
    }

    public void setNhomSP(int NhomSP) {
        this.NhomSP = NhomSP;
    }

    public void setTenSP(String TenSP) {
        this.TenSP = TenSP;
    }

    public void setThuongHieu(String ThuongHieu) {
        this.ThuongHieu = ThuongHieu;
    }

    public void setImg(String Img) {
        this.Img = Img;
    }

    
    
}
