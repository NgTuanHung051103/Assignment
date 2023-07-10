/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.admin;

import dal.SanPhamDAO;
import dal.tsktDAO;
import java.util.ArrayList;
import model.SanPham;

/**
 *
 * @author NgTua
 */
public class LGadminAddProduct {
        
        tsktDAO TSdb = new tsktDAO();
        
//        create SanPham moi vao db: SanPham
//    Co return MaSP: tan dung viec xuly MaSP de tra ve cho function ke tiep
        public int addProduct(String TenSP,
            String ThuongHieu, String Img,
            int GiaThanh, int MaNhom, int SoLuong){
            
            SanPhamDAO SPdb = new SanPhamDAO();
            
            ArrayList<SanPham> list = SPdb.getAll();
            
//            set MaSP = MaSP thang cuoi cung + 1
            int MaSP = list.get(list.size() - 1).getMaSP() + 1;
            
            SPdb.addProduct(MaSP, TenSP, ThuongHieu, Img, GiaThanh, MaNhom, SoLuong);
            
             return MaSP;
        }

    public void addTSKTQuat(int MaSP, String LoaiQuat, String DuongKinhQuat, 
                    String CheDoGio, String BangDieuKhien, String LoaiMotor, 
                    String TienIch, String KichThuocKhoiLuong, int SoCanhQuat) {
        TSdb.updateTSKTQuatByID( MaSP,  LoaiQuat,  DuongKinhQuat,  CheDoGio,  BangDieuKhien,  LoaiMotor,  TienIch,  KichThuocKhoiLuong, SoCanhQuat);
    }

    public void addTSKTDieuHoa(int MaSP, String LoaiMay, String CongSuat, 
                    String PhamVi, String KhuKhuan, String CongNgheTietKiemDien, 
                    String LamLanhNhanh, String TienIch,
                    String TieuThuDien, String DanLanh, String DanNong) {
             TSdb.updateTSKTDieuHoa(MaSP,  LoaiMay,  CongSuat, 
                     PhamVi,  KhuKhuan,  CongNgheTietKiemDien, 
                     LamLanhNhanh,  TienIch,
                     TieuThuDien,  DanLanh,  DanNong);       
        
    }

    public void addTSKTTuLanh(int MaSP, String KieuTu, String DungTich, 
                String CongNgheTietKiemDien, String CongNgheLamLanh, 
                String CongNgheKhangKhuanKhuMui, String CongNgheBaoQuanThucPham, 
                String KichThuocKhoiLuong, String TienIch) {
        TSdb.updateTSKTTuLanh( MaSP,  KieuTu,  DungTich, 
                 CongNgheTietKiemDien,  CongNgheLamLanh, 
                 CongNgheKhangKhuanKhuMui,  CongNgheBaoQuanThucPham, 
                 KichThuocKhoiLuong,  TienIch);
        }

    public void addTSKTTivi(int MaSP, String LoaiTV, String UngDung, 
                String CongNgheHinhAnh, String DieuKhienBangGiongNoi, 
                String RemoteThongMinh, String PhanChieu, String KichThuoc) {
            TSdb.updateTSKTTivi(MaSP,  LoaiTV,  UngDung, 
                 CongNgheHinhAnh,  DieuKhienBangGiongNoi, 
                 RemoteThongMinh,  PhanChieu,  KichThuoc);
    }

}