/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic;

import dal.UserDAO;
import java.util.ArrayList;
import model.User;

/**
 *
 * @author NgTua
 */
public class LGlogin {

//    kiem tra dang nhap
//    input: Tk, Mk
//    output: 123: dieu huong servlet den cac trang khac
//                  0: dang nhap thanh cong
//                  1: danh sach tai khoan rong / tai khoan khong ton tai
//                  2: sai mat khau   
    public int checkLogin(String Tk, String Mk) {

//        lay danh sach tai khoan
        UserDAO Userdb = new UserDAO();
        ArrayList<String> List_Tk_Users = Userdb.get_Tk_Users();
        
        if (List_Tk_Users.isEmpty() == true) {
            return 1;
        }
        
//       Duyet Tk cua tung Users 
        for (String s : List_Tk_Users) {

//          Neu tim duoc tai khoan da dang ky
            if (Tk.equalsIgnoreCase(s)) {

//              Neu tai khoan do co mat khau == mat khau da dang ky
                if (Mk.equalsIgnoreCase(Userdb.get_Mk_ByTk(Tk))) {
                    return 0;
                } else {
                    return 2;
                }
            }
        }

//     tai khoan khong ton tai
        return 1;
    }

//    lay thong tin User khi da dang nhap thanh cong 
//    input: Tk
//    output: User
    public User get_Info_User_Login(String Tk){
        UserDAO Userdb = new UserDAO();
        ArrayList<User> List_Users = Userdb.get_Info_User_Login(Tk);
        System.out.println("size: "+List_Users.size());
        if(List_Users.isEmpty()){
            return null;
        } else {
            return List_Users.get(0);
        }
    }

//  Lay cart cua tai khoan khi duoc dang nhap
//    Input: Tk
//    OUTPUT: String cart
    public String getTxtCart(String Tk) {
        if (get_Info_User_Login(Tk).getTxtCart().equalsIgnoreCase("") ){
            return "";
        }
        return  get_Info_User_Login(Tk).getTxtCart();
    }
    
    
}
