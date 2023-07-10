/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.admin;

import dal.UserDAO;
import logic.common.LGsignup;
import model.User;

/**
 *
 * @author ptkng
 */
public class LGadminAddAccount {

    public void addAccount(String Tk, String Mk, int isAdmin, String Ten, String Email, String DiaChi, String SDT, String txtCart, int Tuoi) {
        
        LGsignup signup = new LGsignup();
        
//        Tao ID moi
        String ID = signup.generate_New_UserID(isAdmin);
        
        User user = new User (ID, Ten, Email, Tk, Mk, DiaChi, SDT, txtCart, Tuoi, isAdmin);
        
        UserDAO USdb = new UserDAO();
        
        USdb.create_Account_By_adAdd(user);
    }
    
}
