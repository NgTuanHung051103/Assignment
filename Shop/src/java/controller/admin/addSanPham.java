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

            lgAdd.addProduct( TenSP,  ThuongHieu, image_Path, GiaThanh, NhomSP, SoLuong);
            
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
