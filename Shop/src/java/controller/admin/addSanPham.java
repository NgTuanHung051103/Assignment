/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import constant.CommonConst;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import logic.LGadminAdd;
/**
 *
 * @author NgTua
 */
@MultipartConfig
public class addSanPham extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String TenSP = request.getParameter("name");
        String ThuongHieu = request.getParameter("thuonghieu");
        int GiaThanh = Integer.parseInt(request.getParameter("price"));
        int SoLuong = Integer.parseInt(request.getParameter("quantity"));
        int NhomSP = Integer.parseInt(request.getParameter("category"));

        Part part = request.getPart("image");

        try {
            File dir = new File(request.getServletContext().getRealPath("/Shop/"
                    + CommonConst.SLASH + CommonConst.FOLDER_PRODUCT_IMAGE));

//            Neu chua ton tai folder: 
            if (!dir.exists()) {
//                tao ra duong dan do:
                dir.mkdirs();
            }
//            Tao file chua image do
            File image = new File(dir, part.getSubmittedFileName());

            part.write(image.getAbsolutePath());

            String image_Path = "Shop/" + CommonConst.FOLDER_PRODUCT_IMAGE
                    + CommonConst.SLASH
                    + image.getName();

            LGadminAdd lgAdd = new LGadminAdd();
            
            int MaSP = lgAdd.addProduct( TenSP,  ThuongHieu, image_Path, GiaThanh, NhomSP, SoLuong);
            
            switch( NhomSP ){
                case 1:
                    String LoaiQuat = request.getParameter("LoaiQuat");
                    String DuongKinhQuat = request.getParameter("LoaiQuat");
                    String CheDoGio = request.getParameter("CheDoGio");
                    String BangDieuKhien = request.getParameter("BangDieuKhien");
                    String LoaiMotor = request.getParameter("LoaiMotor");
                    String TienIch1 = request.getParameter("TienIch");
                    String KichThuocKhoiLuong1 = request.getParameter("KichThuocKhoiLuong");
                    
                    lgAdd.addTSKTQuat(MaSP, LoaiQuat, DuongKinhQuat, CheDoGio, BangDieuKhien, LoaiMotor
                                                                , TienIch1, KichThuocKhoiLuong1 );
                    break;
                case 2:
                    String LoaiMay = request.getParameter("LoaiMay");
                    String CongSuat = request.getParameter("CongSuat");
                    String PhamVi = request.getParameter("PhamVi");
                    String KhuKhuan = request.getParameter("KhuKhuan");
                    String CongNgheTietKiemDien2 = request.getParameter("CongNgheTietKiemDien2");
                    String LamLanhNhanh = request.getParameter("LamLanhNhanh");
                    String TienIch2 = request.getParameter("TienIch");
                    String TieuThuDien = request.getParameter("TieuThuDien");
                    String DanLanh = request.getParameter("DanLanh");
                    String DanNong = request.getParameter("DanNong");
                    
                    lgAdd.addTSKTDieuHoa(MaSP, LoaiMay, CongSuat, PhamVi, KhuKhuan, CongNgheTietKiemDien2
                                                                    , LamLanhNhanh, TienIch2, TieuThuDien, DanLanh, DanNong);
                    break;
                
                case 3:
                    String KieuTu = request.getParameter("KieuTu");
                    String DungTich = request.getParameter("DungTich");
                    String CongNgheTietKiemDien = request.getParameter("CongNgheTietKiemDien");
                    String CongNgheLamLanh = request.getParameter("CongNgheLamLanh");
                    String CongNgheKhangKhuanKhuMui = request.getParameter("CongNgheKhangKhuanKhuMui");
                    String CongNgheBaoQuanThucPham = request.getParameter("CongNgheBaoQuanThucPham");
                    String KichThuocKhoiLuong3 = request.getParameter("KichThuocKhoiLuong3");
                    String TienIch3 = request.getParameter("TienIch3");
                    
                    lgAdd.addTSKTTuLanh(MaSP,KieuTu, DungTich, CongNgheTietKiemDien, CongNgheLamLanh
                                        , CongNgheKhangKhuanKhuMui, CongNgheBaoQuanThucPham
                                                , KichThuocKhoiLuong3, TienIch3);

                    break;
                    
                case 4: 
                   String LoaiTV = request.getParameter("LoaiTV");
                   String UngDung = request.getParameter("UngDung");
                   String CongNgheHinhAnh = request.getParameter("CongNgheHinhAnh");
                   String DieuKhienBangGiongNoi = request.getParameter("DieuKhienBangGiongNoi");
                   String RemoteThongMinh = request.getParameter("RemoteThongMinh");
                   String PhanChieu = request.getParameter("PhanChieu");
                   String KichThuoc = request.getParameter("KichThuoc");
                   
                   lgAdd.addTSKTTivi(MaSP, LoaiTV, UngDung, CongNgheHinhAnh,
                                    DieuKhienBangGiongNoi, RemoteThongMinh, PhanChieu, KichThuoc);
            }
            
            //redirect to homepage
            response.sendRedirect("listAdmin");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
