/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.admin;

import dal.SanPhamDAO;
import dal.tsktDAO;

/**
 *
 * @author ptkng
 */
public class LGadminDeleteProduct {

    tsktDAO TSdb = new tsktDAO();
    public void deleteSanPham(int MaSP) {
        SanPhamDAO SPdb = new SanPhamDAO();
        
        SPdb.deleteByID(MaSP);
    }

    public void deleteTSKTQuat(int MaSP) {
        TSdb.deleteTSKTQuatByID(MaSP);
    }

    public void deleteTSKTDieuHoa(int MaSP) {
        TSdb.deleteTSKTDieuHoaByID(MaSP);
    }

    public void deleteTSKTTuLanh(int MaSP) {
        TSdb.deleteTSKTTuLanhByID(MaSP);
    }

    public void deleteTSKTTivi(int MaSP) {
        TSdb.deleteTSKTTiviByID(MaSP);
    }
    
}
