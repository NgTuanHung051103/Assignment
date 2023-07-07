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
    private int OrderID, MaSP, SoLuong;

    public OrderDetail() {
    }

    public OrderDetail(int OrderID, int MaSP, int SoLuong) {
        this.OrderID = OrderID;
        this.MaSP = MaSP;
        this.SoLuong = SoLuong;
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

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public void setMaSP(int MaSP) {
        this.MaSP = MaSP;
    }

    public void setSoLuong(int SoLuong) {
        this.SoLuong = SoLuong;
    }
    
    
    
}
