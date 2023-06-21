/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic;

import dal.tsktDAO;
import java.util.ArrayList;
import model.TSKT_Quat;

/**
 *
 * @author NgTua
 */
public class LGcateFilter {

    public ArrayList<TSKT_Quat> getAll(int MaSP, int NhomSP) {
        tsktDAO TSdb = new tsktDAO();
        switch (NhomSP){
            case 1:
                    return TSdb.getByID(MaSP, NhomSP);
                break;
                
            case 2: 
                
                break;
        }
                
                 return null;   
    }
    
}
