/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author NgTua
 */
public class KhachHang {
      private String Ten, DiaChi, Tk, Mk;
    int Tuoi;

    public KhachHang(String Ten, String DiaChi, String Tk, String Mk, int Tuoi) {
        this.Ten = Ten;
        this.DiaChi = DiaChi;
        this.Tk = Tk;
        this.Mk = Mk;
        this.Tuoi = Tuoi;
    }

    public KhachHang() {
    }

    public String getTen() {
        return Ten;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public String getTk() {
        return Tk;
    }

    public String getMk() {
        return Mk;
    }

    public int getTuoi() {
        return Tuoi;
    }

    public void setTen(String Ten) {
        this.Ten = Ten;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public void setTk(String Tk) {
        this.Tk = Tk;
    }

    public void setMk(String Mk) {
        this.Mk = Mk;
    }

    public void setTuoi(int Tuoi) {
        this.Tuoi = Tuoi;
    }
    
}
