/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.NhomSPDAO;
import dal.SanPhamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import logic.account.LGaccountSanPham;
import logic.admin.LGadminTSKT;
import model.NhomSP;
import model.SanPham;
import model.TSKT_DieuHoa;
import model.TSKT_Quat;
import model.TSKT_Tivi;
import model.TSKT_TuLanh;

/**
 *
 * @author NgTua
 */
public class listAdmin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();

        SanPhamDAO SPdb = new SanPhamDAO();
        
//        Lay tat ca thong tin co ban ve san pham
        ArrayList<SanPham> List_SanPhams = SPdb.getAll();
        
//        them vao session: luu list len session
        session.setAttribute("listSP", List_SanPhams);
        
        NhomSPDAO NHdb = new NhomSPDAO();
        
//        Lay cac category
        ArrayList<NhomSP> List_NhomSPs = NHdb.getListCategory();
        
//        them vao session: luu category len session
        session.setAttribute("listCategories", List_NhomSPs);
        
//      -- Lay thong tin san pham: ( giong account.java )
        LGaccountSanPham lgASP = new LGaccountSanPham();

        HashMap<Integer, SanPham> hashmapSanPham = new HashMap<>();

        hashmapSanPham = lgASP.get_HashMap_SanPham_By_MaSP();
        
        session.setAttribute("hashmapSanPham", hashmapSanPham);
        
//        -- Lay tskt tung category va up len session:
            LGadminTSKT lgATSKT = new LGadminTSKT();

//         + tskt quat:
             HashMap<Integer, TSKT_Quat> hashmapTSKTQuat = new HashMap<>();
                
             hashmapTSKTQuat = lgATSKT.get_HashMap_TSKTQuat();
        
             session.setAttribute("hashmapTSKTQuat", hashmapTSKTQuat);
        
//         + tskt dieuhoa:
             HashMap<Integer, TSKT_DieuHoa> hashmapTSKTDieuHoa = new HashMap<>();
                
             hashmapTSKTDieuHoa = lgATSKT.get_HashMap_TSKTDieuHoa();
        
             session.setAttribute("hashmapTSKTDieuHoa", hashmapTSKTDieuHoa);
             
//         + tskt tulanh:
             HashMap<Integer, TSKT_TuLanh> hashmapTSKTTuLanh = new HashMap<>();
                
             hashmapTSKTTuLanh = lgATSKT.get_HashMap_TSKTTuLanh();
        
             session.setAttribute("hashmapTSKTTuLanh", hashmapTSKTTuLanh);

//         + tskt tivi:
             HashMap<Integer, TSKT_Tivi> hashmapTSKTTivi = new HashMap<>();
                
             hashmapTSKTTivi = lgATSKT.get_HashMap_TSKTTivi();
        
             session.setAttribute("hashmapTSKTTivi", hashmapTSKTTivi);

             
        
        request.getRequestDispatcher("view/admin/dashboard/adProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
