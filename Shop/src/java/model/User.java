/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author NgTua
 */
public class User {
      private String ID, Ten,  Email,Tk, Mk, DiaChi,  SDT, txtCart;
      private int Tuoi, isAdmin;

    public User(String ID, String Ten, String Email, String Tk, String Mk, String DiaChi, String SDT, String txtCart, int Tuoi, int isAdmin) {
        this.ID = ID;
        this.Ten = Ten;
        this.Email = Email;
        this.Tk = Tk;
        this.Mk = Mk;
        this.DiaChi = DiaChi;
        this.SDT = SDT;
        this.txtCart = txtCart;
        this.Tuoi = Tuoi;
        this.isAdmin = isAdmin;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    
    

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }


    public int getTuoi() {
        return Tuoi;
    }

    public void setTuoi(int Tuoi) {
        this.Tuoi = Tuoi;
    }

    public User() {
    }

    public String getID() {
        return ID;
    }

    public String getTen() {
        return Ten;
    }

    public String getEmail() {
        return Email;
    }

    public String getTk() {
        return Tk;
    }

    public String getMk() {
        return Mk;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public String getSDT() {
        return SDT;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public void setTen(String Ten) {
        this.Ten = Ten;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setTk(String Tk) {
        this.Tk = Tk;
    }

    public void setMk(String Mk) {
        this.Mk = Mk;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

   

    public String getTxtCart() {
        return txtCart;
    }

    @Override
    public String toString() {
        return "User{" + "ID=" + ID + ", Ten=" + Ten + ", Email=" + Email + ", Tk=" + Tk + ", Mk=" + Mk + ", DiaChi=" + DiaChi + ", SDT=" + SDT + ", txtCart=" + txtCart + ", Tuoi=" + Tuoi + ", isAdmin=" + isAdmin + '}';
    }

    public void setTxtCart(String txtCart) {
        this.txtCart = txtCart;
    }

  
    
}
