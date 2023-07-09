/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.account;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import logic.common.LGlogin;

/**
 *
 * @author ptkng
 */
public class LGaccountUser {

    public User getInfoUser(HttpServletRequest request, HttpServletResponse response) {
        
        LGlogin login = new LGlogin();
        
        String Tk = login.getTK( request, response);
        
        User user = login.get_Info_User_Login(Tk);
        
        return user;
    }
    
}
