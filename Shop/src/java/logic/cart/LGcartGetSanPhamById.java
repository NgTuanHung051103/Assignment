/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.cart;

import dal.SanPhamDAO;
import java.util.ArrayList;
import model.SanPham;

/**
 *
 * @author NgTua
 */
public class LGcartGetSanPhamById {

    public SanPham getSanPhamById(int MaSP) {
        SanPhamDAO SPdb = new SanPhamDAO();
        ArrayList <SanPham> sanpham = SPdb.getSanPhamById(MaSP);
        return sanpham.get(0);
    }
    
}
