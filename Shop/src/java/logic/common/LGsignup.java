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
    UserDAO Userdb = new UserDAO();
    
//    Kiem tra xem da ton tai Tk hay chua trong db
//    input: Tk
//    output: User or null
    public User get_Info_User_Login(String Tk){
        ArrayList<User> List_Users = Userdb.get_Info_User_Login(Tk);
       
//        Neu list rong
        if(List_Users.isEmpty()){
            return null;
        } else { //tra ve element dau tien
            return List_Users.get(0);
        }
    }

    public void create_Account(String Tk, String Mk) {
        
        Userdb.create_Account_By_Tk(Tk, Mk, generate_New_UserID());
        
    }
    
//    Tao ID moi cho User
//    INPUT: null
//    OUTPUT: ID moi hop le
    public String generate_New_UserID(){
        String NewestID = Userdb.get_ID_Newest_User().substring(2);
        
        int NewestStt = Integer.parseInt(NewestID);
        
        String newID = "US";
        if ( NewestStt < 10 ){
            newID += "0" +  Integer.toString(NewestStt + 1) ;
        } else {
            newID +=  Integer.toString(NewestStt + 1);
        }
        System.out.println("Da tao ID moi: " + newID);
        return newID;
    }

}
