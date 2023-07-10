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
public class LGadminEditAccount {

//    Tao sql theo tung truong du lieu ( co the rong hoac ko rong )
//    INPUT: tat ca du lieu cua User
//                    Tuoi_str: type: String. Xu ly sql se chuyen sang int
//    OUTPUT: null
    public void edit_Account_By_ID(String ID, String Tk, String Mk, int isAdmin, String Ten, String Email, String DiaChi, String SDT, String txtCart, String Tuoi_str) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET [ID] = \'" + ID + "\'  ,Tk = \'" + Tk + "\'  ,Mk =  \'" + Mk + "\' ,isAdmin = " + isAdmin + " ";

        if (!Ten.equalsIgnoreCase("")) {
            sql += ", Ten = \'" + Ten + "\' ";
        }
        if (!Email.equalsIgnoreCase("")) {
            sql += ", Email = \'" + Email + "\' ";
        }
        if (!DiaChi.equalsIgnoreCase("")) {
            sql += ", DiaChi = \'" + DiaChi + "\' ";
        }
        if (!SDT.equalsIgnoreCase("")) {
            sql += ", SDT = \'" + SDT + "\' ";
        }
        if (!txtCart.equalsIgnoreCase("")) {
            sql += ", txtCart = \'" + txtCart + "\' ";
        }
        if (!Tuoi_str.equalsIgnoreCase("")) {
            sql += ", Tuoi = " + Integer.parseInt(Tuoi_str) + " ";
        }
        sql += "  WHERE ID = \'" + ID + "\'";
        
        System.out.println(sql);
        
        UserDAO USdb = new UserDAO();
        
//        Update vao database
        USdb.update_User_By_Condition(sql);
        
    }

}
