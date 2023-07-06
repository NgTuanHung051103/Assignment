/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author NgTua
 */
public class TSKT_Tivi {
    private int MaSP;
    private String LoaiTV, UngDung, CongNgheHinhAnh, 
            DieuKhienBangGiongNoi,RemoteThongMinh,
            PhanChieu, KichThuoc;

    public TSKT_Tivi() {
    }

    public TSKT_Tivi(int MaSP, String LoaiTV, String UngDung, String CongNgheHinhAnh, String DieuKhienBangGiongNoi, String RemoteThongMinh, String PhanChieu, String KichThuoc) {
        this.MaSP = MaSP;
        this.LoaiTV = LoaiTV;
        this.UngDung = UngDung;
        this.CongNgheHinhAnh = CongNgheHinhAnh;
        this.DieuKhienBangGiongNoi = DieuKhienBangGiongNoi;
        this.RemoteThongMinh = RemoteThongMinh;
        this.PhanChieu = PhanChieu;
        this.KichThuoc = KichThuoc;
    }

    public int getMaSP() {
        return MaSP;
    }

    public String getLoaiTV() {
        return LoaiTV;
    }

    @Override
    public String toString() {
        return "TSKT_Tivi{" + "MaSP=" + MaSP + ", LoaiTV=" + LoaiTV + ", UngDung=" + UngDung + ", CongNgheHinhAnh=" + CongNgheHinhAnh + ", DieuKhienBangGiongNoi=" + DieuKhienBangGiongNoi + ", RemoteThongMinh=" + RemoteThongMinh + ", PhanChieu=" + PhanChieu + ", KichThuoc=" + KichThuoc + '}';
    }

    public void setMaSP(int MaSP) {
        this.MaSP = MaSP;
    }

    public void setLoaiTV(String LoaiTV) {
        this.LoaiTV = LoaiTV;
    }

    public void setUngDung(String UngDung) {
        this.UngDung = UngDung;
    }

    public void setCongNgheHinhAnh(String CongNgheHinhAnh) {
        this.CongNgheHinhAnh = CongNgheHinhAnh;
    }

    public void setDieuKhienBangGiongNoi(String DieuKhienBangGiongNoi) {
        this.DieuKhienBangGiongNoi = DieuKhienBangGiongNoi;
    }

    public void setRemoteThongMinh(String RemoteThongMinh) {
        this.RemoteThongMinh = RemoteThongMinh;
    }

    public void setPhanChieu(String PhanChieu) {
        this.PhanChieu = PhanChieu;
    }

    public void setKichThuoc(String KichThuoc) {
        this.KichThuoc = KichThuoc;
    }

    public String getUngDung() {
        return UngDung;
    }

    public String getCongNgheHinhAnh() {
        return CongNgheHinhAnh;
    }

    public String getDieuKhienBangGiongNoi() {
        return DieuKhienBangGiongNoi;
    }

    public String getRemoteThongMinh() {
        return RemoteThongMinh;
    }

    public String getPhanChieu() {
        return PhanChieu;
    }

    public String getKichThuoc() {
        return KichThuoc;
    }

    
}
