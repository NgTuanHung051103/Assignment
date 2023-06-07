/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author NgTua
 */
public class NhomSP {
    private int MaNhom;
    private String TenNhom;

    public NhomSP(int MaNhom, String TenNhom) {
        this.MaNhom = MaNhom;
        this.TenNhom = TenNhom;
    }

    public NhomSP() {
    }

    public void setMaNhom(int MaNhom) {
        this.MaNhom = MaNhom;
    }

    public void setTenNhom(String TenNhom) {
        this.TenNhom = TenNhom;
    }

    public int getMaNhom() {
        return MaNhom;
    }

    public String getTenNhom() {
        return TenNhom;
    }
    
}
