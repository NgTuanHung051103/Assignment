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
import logic.LGadminUpdate;

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
            
           LGadminUpdate lgUpdate = new LGadminUpdate();
           
            lgUpdate.updateSanPham(MaSP, TenSP, image_Path, ThuongHieu, GiaThanh, SoLuong, MaNhom );
            
            switch ( MaNhom ){
                case 1:
                    String LoaiQuatEdit = request.getParameter("LoaiQuatEdit");
                    String DuongKinhQuatEdit = request.getParameter("DuongKinhQuatEdit");
                    String CheDoGioEdit = request.getParameter("CheDoGioEdit");
                    String BangDieuKhienEdit = request.getParameter("BangDieuKhienEdit");
                    String LoaiMotorEdit = request.getParameter("LoaiMotorEdit");
                    String TienIch1Edit = request.getParameter("TienIch1Edit");
                    String KichThuocKhoiLuong1Edit = request.getParameter("KichThuocKhoiLuong1Edit");
                    String SoCanhQuatEdit = request.getParameter("SoCanhQuatEdit");
                    
                    lgUpdate.updateTSKTQuat(MaSP, LoaiQuatEdit, DuongKinhQuatEdit, CheDoGioEdit, BangDieuKhienEdit, LoaiMotorEdit,TienIch1Edit,KichThuocKhoiLuong1Edit, SoCanhQuatEdit);
                    
                    break;
                case 2: 
                    break;
                case 3:
                    break;
                case 4:
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