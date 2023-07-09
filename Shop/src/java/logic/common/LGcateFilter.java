/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.common;

import dal.tsktDAO;
import java.util.ArrayList;
import model.TSKT_DieuHoa;
import model.TSKT_Quat;
import model.TSKT_Tivi;
import model.TSKT_TuLanh;

/**
 *
 * @author NgTua
 */
public class LGcateFilter {

    tsktDAO TSdb = new tsktDAO();

    public ArrayList<TSKT_Quat> getAll1(int MaSP, int NhomSP) {
        return TSdb.getTSKTQuatByID(MaSP);
    }

    public ArrayList<TSKT_DieuHoa> getAll2(int MaSP, int NhomSP) {
        return TSdb.getTSKTDieuHoaByID(MaSP);
    }

    public ArrayList<TSKT_TuLanh> getAll3(int MaSP, int NhomSP) {
        return TSdb.getTSKTTuLanhByID(MaSP);
    }

    public ArrayList<TSKT_Tivi> getAll4(int MaSP, int NhomSP) {
       return TSdb.getTSKTTiviByID(MaSP);
    }
    
    

}
