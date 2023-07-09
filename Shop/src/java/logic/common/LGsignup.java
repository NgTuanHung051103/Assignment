/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.common;

import dal.UserDAO;
import java.util.ArrayList;
import model.User;

/**
 *
 * @author ptkng
 */
public class LGsignup {
    
//    Kiem tra xem da ton tai Tk hay chua trong db
//    input: Tk
//    output: User or null
    public User get_Info_User_Login(String Tk){
        UserDAO Userdb = new UserDAO();
        ArrayList<User> List_Users = Userdb.get_Info_User_Login(Tk);
        if(List_Users.isEmpty()){
            return null;
        } else {
            return List_Users.get(0);
        }
    }
}
