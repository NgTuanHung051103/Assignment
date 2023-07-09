/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.admin;

import dal.SanPhamDAO;
import dal.tsktDAO;

/**
 *
 * @author ptkng
 */
public class LGadminUpdate {

    public void updateSanPham(int MaSP, String TenSP, String image, String ThuongHieu, int GiaThanh, int SoLuong, int MaNhom) {
        SanPhamDAO SPdb = new SanPhamDAO();

        SPdb.updateByID(MaSP, TenSP, image, ThuongHieu, GiaThanh, SoLuong, MaNhom);
    }

    public void updateTSKTQuat(int MaSP, String LoaiQuatEdit, String DuongKinhQuatEdit,
            String CheDoGioEdit, String BangDieuKhienEdit, String LoaiMotorEdit,
            String TienIch1Edit, String KichThuocKhoiLuong1Edit, String SoCanhQuatEdit) {

        String sql = " UPDATE [dbo].[TSKTQuat]\n"
                + "   SET MaSP = " + MaSP + " ";

        if (!LoaiMotorEdit.equalsIgnoreCase("")) {
            sql += ", LoaiQuat = \'" + LoaiMotorEdit + "\' ";
        }
        if (!DuongKinhQuatEdit.equalsIgnoreCase("")) {
            sql += " ,DuongKinhQuat = \'" + DuongKinhQuatEdit + "\' ";
        }
        if (!CheDoGioEdit.equalsIgnoreCase("")) {
            sql += ",CheDoGio = \'" + CheDoGioEdit + "\'  ";
        }
        if (!BangDieuKhienEdit.equalsIgnoreCase("")) {
            sql += ",BangDieuKhien = \'" + BangDieuKhienEdit + "\'  ";
        }
        if (!LoaiMotorEdit.equalsIgnoreCase("")) {
            sql += ",LoaiMotor = \'" + LoaiMotorEdit + "\'  ";
        }
        if (!TienIch1Edit.equalsIgnoreCase("")) {
            sql += ",TienIch = \'" + TienIch1Edit + "\'  ";
        }
        if (!KichThuocKhoiLuong1Edit.equalsIgnoreCase("")) {
            sql += ",KichThuocKhoiLuong = \'" + KichThuocKhoiLuong1Edit + "\'  ";
        }
        if (SoCanhQuatEdit != null) {
            sql += ",SoCanhQuat = " + SoCanhQuatEdit;
        }
        sql += "  WHERE MaSP = " + MaSP;

        tsktDAO TSdb = new tsktDAO();

        TSdb.updateTSKTByCondition(sql);
    }

    public void updateTSKTDieuHoa(int MaSP, String LoaiMayEdit, String CongSuatEdit, String PhamViEdit,
            String KhuKhuanEdit, String CongNgheTietKiemDien2Edit, String LamLanhNhanhEdit,
            String TienIch2Edit, String TieuThuDienEdit, String DanLanhEdit, String DanNongEdit) {
        String sql = " UPDATE [dbo].[TSKTDieuHoa]\n"
                + "   SET MaSP = " + MaSP + " ";

        if (!LoaiMayEdit.equalsIgnoreCase("")) {
            sql += ", LoaiMay = \'" + LoaiMayEdit + "\' ";
        }
        if (!CongSuatEdit.equalsIgnoreCase("")) {
            sql += " , CongSuat = \'" + CongSuatEdit + "\' ";
        }
        if (!PhamViEdit.equalsIgnoreCase("")) {
            sql += ",PhamVi = \'" + PhamViEdit + "\'  ";
        }
        if (!KhuKhuanEdit.equalsIgnoreCase("")) {
            sql += ",KhuKhuan = \'" + KhuKhuanEdit + "\'  ";
        }
        if (!CongNgheTietKiemDien2Edit.equalsIgnoreCase("")) {
            sql += ",CongNgheTietKiemDien = \'" + CongNgheTietKiemDien2Edit + "\'  ";
        }
        if (!LamLanhNhanhEdit.equalsIgnoreCase("")) {
            sql += ",LamLanhNhanh = \'" + LamLanhNhanhEdit + "\'  ";
        }
        if (!TienIch2Edit.equalsIgnoreCase("")) {
            sql += ",TienIch = \'" + TienIch2Edit + "\'  ";
        }
        if (DanLanhEdit != null) {
            sql += ",DanLanh = " + DanLanhEdit;
        }
        if (DanNongEdit != null) {
            sql += ",DanNong = " + DanNongEdit;
        }

        sql += "  WHERE MaSP = " + MaSP;

        tsktDAO TSdb = new tsktDAO();

        TSdb.updateTSKTByCondition(sql);
    }

    public void updateTSKTTuLanh(int MaSP, String KieuTuEdit, String DungTichEdit, String CongNgheTietKiemDien3Edit, String CongNgheLamLanhEdit, String CongNgheKhangKhuanKhuMuiEdit, String CongNgheBaoQuanThucPhamEdit, String KichThuocKhoiLuong3Edit, String TienIch3Edit) {
        String sql = " UPDATE [dbo].[TSKTTuLanh]\n"
                + "   SET MaSP = " + MaSP + " ";

        if (!KieuTuEdit.equalsIgnoreCase("")) {
            sql += ", KieuTu = \'" + KieuTuEdit + "\' ";
        }
        if (!DungTichEdit.equalsIgnoreCase("")) {
            sql += " , DungTich = \'" + DungTichEdit + "\' ";
        }
        if (!CongNgheTietKiemDien3Edit.equalsIgnoreCase("")) {
            sql += ",CongNgheTietKiemDien = \'" + CongNgheTietKiemDien3Edit + "\'  ";
        }
        if (!CongNgheLamLanhEdit.equalsIgnoreCase("")) {
            sql += ",CongNgheLamLanh = \'" + CongNgheLamLanhEdit + "\'  ";
        }
        if (!CongNgheKhangKhuanKhuMuiEdit.equalsIgnoreCase("")) {
            sql += ",CongNgheKhangKhuanKhuMui = \'" + CongNgheKhangKhuanKhuMuiEdit + "\'  ";
        }
        if (!CongNgheBaoQuanThucPhamEdit.equalsIgnoreCase("")) {
            sql += ",CongNgheBaoQuanThucPham = \'" + CongNgheBaoQuanThucPhamEdit + "\'  ";
        }
        if (!KichThuocKhoiLuong3Edit.equalsIgnoreCase("")) {
            sql += ",KichThuocKhoiLuong = \'" + KichThuocKhoiLuong3Edit + "\'  ";
        }
        if (!TienIch3Edit.equalsIgnoreCase("")) {
            sql += ",TienIch = \'" + TienIch3Edit + "\'  ";
        }
        sql += "  WHERE MaSP = " + MaSP;

        tsktDAO TSdb = new tsktDAO();

        TSdb.updateTSKTByCondition(sql);

    }

    public void updateTSKTTivi(int MaSP, String LoaiTVEdit, String UngDungEdit, String CongNgheHinhAnhEdit, String DieuKhienBangGiongNoiEdit, String RemoteThongMinhEdit, String PhanChieuEdit, String KichThuocEdit) {
        String sql = " UPDATE [dbo].[TSKTTivi]\n"
                + "   SET MaSP = " + MaSP + " ";

        if (!LoaiTVEdit.equalsIgnoreCase("")) {
            sql += ", LoaiTV = \'" + LoaiTVEdit + "\' ";
        }
        if (!UngDungEdit.equalsIgnoreCase("")) {
            sql += " , UngDung = \'" + UngDungEdit + "\' ";
        }
        if (!CongNgheHinhAnhEdit.equalsIgnoreCase("")) {
            sql += ",CongNgheHinhAnh = \'" + CongNgheHinhAnhEdit + "\'  ";
        }
        if (!DieuKhienBangGiongNoiEdit.equalsIgnoreCase("")) {
            sql += ",CongNgheLamLanh = \'" + DieuKhienBangGiongNoiEdit + "\'  ";
        }
        if (!RemoteThongMinhEdit.equalsIgnoreCase("")) {
            sql += ",RemoteThongMinh = \'" + RemoteThongMinhEdit + "\'  ";
        }
        if (!PhanChieuEdit.equalsIgnoreCase("")) {
            sql += ",CongNgheBaoQuanThucPham = \'" + PhanChieuEdit + "\'  ";
        }
        if (!KichThuocEdit.equalsIgnoreCase("")) {
            sql += ",KichThuoc = \'" + KichThuocEdit + "\'  ";
        }
        sql += "  WHERE MaSP = " + MaSP;

        tsktDAO TSdb = new tsktDAO();

        TSdb.updateTSKTByCondition(sql);

    }

}
