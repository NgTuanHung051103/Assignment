/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.admin;

import dal.tsktDAO;
import java.util.ArrayList;
import java.util.HashMap;
import model.SanPham;
import model.TSKT_DieuHoa;
import model.TSKT_Quat;
import model.TSKT_Tivi;
import model.TSKT_TuLanh;

/**
 *
 * @author ptkng
 */
public class LGadminTSKT {

    tsktDAO TSdb = new tsktDAO();
    
    public HashMap<Integer, TSKT_Quat> get_HashMap_TSKTQuat() {
        ArrayList<TSKT_Quat> list_tsktQuat = TSdb.getTSKTQuat();
        
//      Tao hashmap de them theo map:  model.MaSP - model.SanPham
        HashMap<Integer, TSKT_Quat> hashmapTSKTQuat = new HashMap<>();
        
//            for each de them tung map dua tren table SanPham
            for( TSKT_Quat t : list_tsktQuat ){
                hashmapTSKTQuat.put( t.getMaSP(), t);
            }
            
            return hashmapTSKTQuat; 
    }

    public HashMap<Integer, TSKT_DieuHoa> get_HashMap_TSKTDieuHoa() {
        ArrayList<TSKT_DieuHoa> list_tsktDieuHoa = TSdb.getTSKTDieuHoa();
        
//      Tao hashmap de them theo map:  model.MaSP - model.SanPham
        HashMap<Integer, TSKT_DieuHoa> hashmapTSKTDieuHoa = new HashMap<>();
        
//            for each de them tung map dua tren table SanPham
            for( TSKT_DieuHoa t : list_tsktDieuHoa ){
                hashmapTSKTDieuHoa.put( t.getMaSP(), t);
            }
            
            return hashmapTSKTDieuHoa;        
    }

    public HashMap<Integer, TSKT_TuLanh> get_HashMap_TSKTTuLanh() {
        ArrayList<TSKT_TuLanh> list_tsktTuLanh = TSdb.getTSKTTuLanh();
        
//      Tao hashmap de them theo map:  model.MaSP - model.SanPham
        HashMap<Integer, TSKT_TuLanh> hashmapTSKTTuLanh = new HashMap<>();
        
//            for each de them tung map dua tren table SanPham
            for( TSKT_TuLanh t : list_tsktTuLanh ){
                hashmapTSKTTuLanh.put( t.getMaSP(), t);
            }
            
            return hashmapTSKTTuLanh; 
    }
    
    public HashMap<Integer, TSKT_Tivi> get_HashMap_TSKTTivi() {
        ArrayList<TSKT_Tivi> list_tsktTivi = TSdb.getTSKTTivi();
        
//      Tao hashmap de them theo map:  model.MaSP - model.SanPham
        HashMap<Integer, TSKT_Tivi> hashmapTSKTTivi = new HashMap<>();
        
//            for each de them tung map dua tren table SanPham
            for( TSKT_Tivi t : list_tsktTivi ){
                hashmapTSKTTivi.put( t.getMaSP(), t);
            }
            
            return hashmapTSKTTivi; 
    }
    
}
