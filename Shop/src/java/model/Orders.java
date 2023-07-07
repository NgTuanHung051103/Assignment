/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ptkng
 */
public class Orders {
    private int OrderID, TotalPrice, Status;
    private String AccountID, Address;

    public Orders() {
    }

    public Orders(int OrderID, int TotalPrice, int Status, String AccountID, String Address) {
        this.OrderID = OrderID;
        this.TotalPrice = TotalPrice;
        this.Status = Status;
        this.AccountID = AccountID;
        this.Address = Address;
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
