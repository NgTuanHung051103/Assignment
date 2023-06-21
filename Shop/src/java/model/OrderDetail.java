/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author NgTua
 */
public class OrderDetail {
    private SanPham p;
    private int SoLuong,  GiaThanh;

    public OrderDetail() {
    }

    public OrderDetail(SanPham p, int SoLuong, int GiaThanh) {
        this.p = p;
        this.SoLuong = SoLuong;
        this.GiaThanh = GiaThanh;
    }

    public SanPham getP() {
        return p;
    }

    public int getSoLuong() {
        return SoLuong;
    }

    public int getGiaThanh() {
        return GiaThanh;
    }

    public void setP(SanPham p) {
        this.p = p;
    }

    public void setSoLuong(int SoLuong) {
        this.SoLuong = SoLuong;
    }

    public void setGiaThanh(int GiaThanh) {
        this.GiaThanh = GiaThanh;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "p=" + p + ", SoLuong=" + SoLuong + ", GiaThanh=" + GiaThanh + '}';
    }
    
    
    
}
