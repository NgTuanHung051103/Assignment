/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import logic.LGadminDelete;

/**
 *
 * @author ptkng
 */
public class deleteSanPham extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int MaSP = Integer.parseInt(request.getParameter("id"));
        int MaNhom = Integer.parseInt(request.getParameter("cate"));
        
        LGadminDelete lgDelete = new LGadminDelete();
        
        lgDelete.deleteSanPham(MaSP);
                
        switch ( MaNhom ){
            case 1:
                lgDelete.deleteTSKTQuat(MaSP);
                break; 
            case 2:
                 lgDelete.deleteTSKTDieuHoa(MaSP);
                break;
            case 3:
                 lgDelete.deleteTSKTTuLanh(MaSP);
                break;
            case 4:
                 lgDelete.deleteTSKTTivi(MaSP);
                break;
          
        }
          response.sendRedirect("listAdmin");
    }
}
