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
import logic.admin.LGadminAddProduct;
import logic.admin.LGadminEditProduct;

/**
 *
 * @author ptkng
 */
@MultipartConfig
public class editSanPham extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int MaSP = Integer.parseInt(request.getParameter("MaSPEdit"));
        String TenSP = request.getParameter("nameEdit");
        String ThuongHieu = request.getParameter("brandEdit");
        int GiaThanh = Integer.parseInt(request.getParameter("priceEdit"));
        int SoLuong = Integer.parseInt(request.getParameter("quantityEdit"));
        int MaNhom = Integer.parseInt(request.getParameter("categoryEdit"));

        Part part = request.getPart("imageEdit");

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

            LGadminEditProduct lgUpdate = new LGadminEditProduct();

            lgUpdate.updateSanPham(MaSP, TenSP, image_Path, ThuongHieu, GiaThanh, SoLuong, MaNhom);

            switch (MaNhom) {
                case 1:
                    String LoaiQuatEdit = request.getParameter("LoaiQuatEdit");
                    String DuongKinhQuatEdit = request.getParameter("DuongKinhQuatEdit");
                    String CheDoGioEdit = request.getParameter("CheDoGioEdit");
                    String BangDieuKhienEdit = request.getParameter("BangDieuKhienEdit");
                    String LoaiMotorEdit = request.getParameter("LoaiMotorEdit");
                    String TienIch1Edit = request.getParameter("TienIch1Edit");
                    String KichThuocKhoiLuong1Edit = request.getParameter("KichThuocKhoiLuong1Edit");
                    String SoCanhQuatEdit = request.getParameter("SoCanhQuatEdit");

                    lgUpdate.updateTSKTQuat(MaSP, LoaiQuatEdit, DuongKinhQuatEdit, CheDoGioEdit, BangDieuKhienEdit, LoaiMotorEdit, TienIch1Edit, KichThuocKhoiLuong1Edit, SoCanhQuatEdit);

                    break;
                case 2:
                    String LoaiMayEdit = request.getParameter("LoaiMayEdit");
                    String CongSuatEdit = request.getParameter("CongSuatEdit");
                    String PhamViEdit = request.getParameter("PhamViEdit");
                    String KhuKhuanEdit = request.getParameter("KhuKhuanEdit");
                    String CongNgheTietKiemDien2Edit = request.getParameter("CongNgheTietKiemDien2Edit");
                    String LamLanhNhanhEdit = request.getParameter("LamLanhNhanhEdit");
                    String TienIch2Edit = request.getParameter("TienIch2Edit");
                    String TieuThuDienEdit = request.getParameter("TieuThuDienEdit");
                    String DanLanhEdit = request.getParameter("DanLanhEdit");
                    String DanNongEdit = request.getParameter("DanNongEdit");

                    lgUpdate.updateTSKTDieuHoa(MaSP, LoaiMayEdit, CongSuatEdit, PhamViEdit, KhuKhuanEdit, CongNgheTietKiemDien2Edit, LamLanhNhanhEdit, TienIch2Edit, TieuThuDienEdit, DanLanhEdit, DanNongEdit);

                    break;
                case 3:
                    String KieuTuEdit = request.getParameter("KieuTuEdit");
                    String DungTichEdit = request.getParameter("DungTichEdit");
                    String CongNgheTietKiemDien3Edit = request.getParameter("CongNgheTietKiemDien3Edit");
                    String CongNgheLamLanhEdit = request.getParameter("CongNgheLamLanhEdit");
                    String CongNgheKhangKhuanKhuMuiEdit = request.getParameter("CongNgheKhangKhuanKhuMuiEdit");
                    String CongNgheBaoQuanThucPhamEdit = request.getParameter("CongNgheBaoQuanThucPhamEdit");
                    String KichThuocKhoiLuong3Edit = request.getParameter("KichThuocKhoiLuong3Edit");
                    String TienIch3Edit = request.getParameter("TienIch3Edit");
                    
                    lgUpdate.updateTSKTTuLanh(MaSP, KieuTuEdit ,DungTichEdit,CongNgheTietKiemDien3Edit,
                            CongNgheLamLanhEdit, CongNgheKhangKhuanKhuMuiEdit, CongNgheBaoQuanThucPhamEdit,
                            KichThuocKhoiLuong3Edit, TienIch3Edit);
                    
                    break;
                case 4:
                    String LoaiTVEdit = request.getParameter("LoaiTVEdit");
                     String UngDungEdit = request.getParameter("UngDungEdit");
                      String CongNgheHinhAnhEdit = request.getParameter("CongNgheHinhAnhEdit");
                       String DieuKhienBangGiongNoiEdit = request.getParameter("DieuKhienBangGiongNoiEdit");
                        String RemoteThongMinhEdit = request.getParameter("RemoteThongMinhEdit");
                         String PhanChieuEdit = request.getParameter("PhanChieuEdit");
                          String KichThuocEdit = request.getParameter("KichThuocEdit");
                       
                          lgUpdate.updateTSKTTivi(MaSP,LoaiTVEdit, UngDungEdit,  CongNgheHinhAnhEdit,
                                 DieuKhienBangGiongNoiEdit,  RemoteThongMinhEdit,  PhanChieuEdit, KichThuocEdit);
                          
                    break;

            }

            //redirect to homepage
            response.sendRedirect("listAdmin");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
