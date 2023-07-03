/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic;

import dal.SanPhamDAO;
import java.util.ArrayList;
import model.SanPham;

/**
 *
 * @author NgTua
 */
public class LGadminAdd {
        public void addProduct(String TenSP,
            String ThuongHieu, String Img,
            int GiaThanh, int NhomSP, int SoLuong){
            
            SanPhamDAO SPdb = new SanPhamDAO();
            
            ArrayList<SanPham> list = SPdb.getAll();
            
            int MaSP = list.size() + 1;
            
            SPdb.addProduct(MaSP, TenSP, ThuongHieu, Img, GiaThanh, NhomSP, SoLuong);
        }
}
