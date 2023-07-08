/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ptkng
 */
import java.sql.Date;
public class Orders {
    private int OrderID, TotalPrice, Status, httt;
    private String AccountID, Address;
    private Date OrderDate;
    private String Order_txt, Email, SDT; 
    
    public Orders() {
    }
    
    public Orders(int OrderID, String AccountID, Date OrderDate, String Address, 
            int TotalPrice, int Status, String Order_txt, String Email, String SDT, int httt) {
        this.OrderID = OrderID;
        this.TotalPrice = TotalPrice;
        this.Status = Status;
        this.AccountID = AccountID;
        this.Address = Address;
        this.OrderDate = OrderDate;
        this.Order_txt = Order_txt;
        this.Email = Email;
        this.SDT = SDT;
        this.httt = httt;
    }

    public int getHttt() {
        return httt;
    }

    public String getEmail() {
        return Email;
    }

    public String getSDT() {
        return SDT;
    }

    public void setHttt(int httt) {
        this.httt = httt;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }
    
    public void setOrder_txt(String Order_txt) {
        this.Order_txt = Order_txt;
    }

    public String getOrder_txt() {
        return Order_txt;
    }

    public Date getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(Date OrderDate) {
        this.OrderDate = OrderDate;
    }
    

    public int getOrderID() {
        return OrderID;
    }

    public int getTotalPrice() {
        return TotalPrice;
    }

    public int getStatus() {
        return Status;
    }

    public String getAccountID() {
        return AccountID;
    }

    public String getAddress() {
        return Address;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public void setTotalPrice(int TotalPrice) {
        this.TotalPrice = TotalPrice;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    public void setAccountID(String AccountID) {
        this.AccountID = AccountID;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    @Override
    public String toString() {
        return "Orders{" + "OrderID=" + OrderID + ", TotalPrice=" + TotalPrice + ", Status=" + Status + ", AccountID=" + AccountID + ", Address=" + Address + '}';
    }
    
    
    
}
