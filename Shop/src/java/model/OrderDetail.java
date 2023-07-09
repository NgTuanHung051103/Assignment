/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ptkng
 */
public class OrderDetail {
       private int OrderID, MaSP, SoLuong, GiaThanh;
       private String Img, TenSP;

    public OrderDetail(int OrderID, int MaSP, int SoLuong,String Img , int GiaThanh, String TenSP) {
        this.OrderID = OrderID;
        this.MaSP = MaSP;
        this.SoLuong = SoLuong;
        this.GiaThanh = GiaThanh;
        this.Img = Img;
        this.TenSP = TenSP;
    }

    public OrderDetail() {
    }

    public void setTenSP(String TenSP) {
        this.TenSP = TenSP;
    }

    public String getTenSP() {
        return TenSP;
    }

    public int getOrderID() {
        return OrderID;
    }

    public int getMaSP() {
        return MaSP;
    }

    public int getSoLuong() {
        return SoLuong;
    }

    public int getGiaThanh() {
        return GiaThanh;
    }

    public String getImg() {
        return Img;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public void setMaSP(int MaSP) {
        this.MaSP = MaSP;
    }

    public void setSoLuong(int SoLuong) {
        this.SoLuong = SoLuong;
    }

    public void setGiaThanh(int GiaThanh) {
        this.GiaThanh = GiaThanh;
    }

    public void setImg(String Img) {
        this.Img = Img;
    }
       
       
}
