/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.admin;

import dal.UserDAO;

/**
 *
 * @author ptkng
 */
public class LGadminDeleteAccount {

    public void deleteAccount(String ID) {
            UserDAO USdb = new UserDAO();
            
            USdb.delete_By_ID(ID);
            
    }
    
}
