/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ptkng
 */
public class ThongBao {
    private int stt;
    
    private String userID;
    private String thongbao;

    public ThongBao() {
    }

    public ThongBao(int stt, String userID, String thongbao) {
        this.stt = stt;
        this.userID = userID;
        this.thongbao = thongbao;
    }

    public int getStt() {
        return stt;
    }

    public String getUserID() {
        return userID;
    }

    public String getThongbao() {
        return thongbao;
    }

    public void setStt(int stt) {
        this.stt = stt;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public void setThongbao(String thongbao) {
        this.thongbao = thongbao;
    }

    @Override
    public String toString() {
        return "ThongBao{" + "stt=" + stt + ", userID=" + userID + ", thongbao=" + thongbao + '}';
    }
    
    
}
