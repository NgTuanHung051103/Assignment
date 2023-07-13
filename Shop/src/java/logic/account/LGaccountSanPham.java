/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.account;

import dal.SanPhamDAO;
import java.util.ArrayList;
import java.util.HashMap;
import model.SanPham;

/**
 *
 * @author ptkng
 */
public class LGaccountSanPham {
    
    SanPhamDAO SPdb = new SanPhamDAO();
    
    public HashMap<Integer, SanPham> get_HashMap_SanPham_By_MaSP() {
            
            ArrayList<SanPham> list_SanPham = SPdb.getAll();
            
//      Tao hashmap de them theo map:  model.MaSP - model.SanPham
            HashMap<Integer, SanPham> hashmapSanPham = new HashMap<>();
            
//            for each de them tung map dua tren table SanPham
            for( SanPham s : list_SanPham ){
                hashmapSanPham.put( s.getMaSP(), s);
            }
            
            return hashmapSanPham;
            
    }
    
}
