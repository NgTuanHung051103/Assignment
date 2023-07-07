/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author NgTua
 */
public class CartDetail {
    private SanPham sanpham;
    private int SoLuong,  GiaThanh;

    public CartDetail() {
    }

    public CartDetail(SanPham sp, int SoLuong, int GiaThanh) {
        this.sanpham = sp;
        this.SoLuong = SoLuong;
        this.GiaThanh = GiaThanh;
    }

    public SanPham getSanPham() {
        return sanpham;
    }

    public int getSoLuong() {
        return SoLuong;
    }

    public int getGiaThanh() {
        return GiaThanh;
    }

    public void setSanPham(SanPham p) {
        this.sanpham = p;
    }

    public void setSoLuong(int SoLuong) {
        this.SoLuong = SoLuong;
    }

    public void setGiaThanh(int GiaThanh) {
        this.GiaThanh = GiaThanh;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "p=" + sanpham + ", SoLuong=" + SoLuong + ", GiaThanh=" + GiaThanh + '}';
    }
    
    
    
}
