package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;

public class OrderDAO {

    private final DBContext conn = new DBContext();

//  -----------------GET--------------------
//    GET ALL
//    INPUT: null
//    OUTPUT: tat ca order
    public ArrayList<Order> getAll() {
        ArrayList<Order> List_Orders = new ArrayList<>();
        try {
            String sql = "Select * From Orders";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order o = new Order(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
                List_Orders.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_Orders;
    }

//    GET Order by UserID:
//    INPUT: String AccountID
//    OUTPUT: list order dua tren accountid
    public ArrayList<Order> get_By_UserID(String AccountID, int status) {
        ArrayList<Order> List_Orders = new ArrayList<>();
        try {
            String sql = "Select * From Orders Where AccountID = \'" + AccountID + "\'  AND status = " + Integer.toString(status);
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order o = new Order(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
                List_Orders.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_Orders;
    }

    public ArrayList<Order> getAllByStatus(int status) {
        ArrayList<Order> List_Orders = new ArrayList<>();
        try {
            String sql = "Select * From Orders Where status = " + Integer.toString(status);
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order o = new Order(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
                List_Orders.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_Orders;
    }

    public Order get_By_OrderID(int orderID) {
          ArrayList<Order> List_Orders = new ArrayList<>();
        try {
            String sql = "Select * From Orders Where OrderID = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, orderID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order o = new Order(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
                List_Orders.add(o);
                return List_Orders.get(0);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }return null;
    }

//    ---------------Insert-------------------
//        Insert new order
//        INPUT: object order full thong tin
//        OUTPUT: null
    public void insertOrders(Order order) {
        try {
            String sql = "INSERT INTO [dbo].[Orders]\n"
                    + "           ([OrderID]\n"
                    + "           ,[AccountID]\n"
                    + "           ,[OrderDate]\n"
                    + "           ,[Address]\n"
                    + "           ,[TotalPrice]\n"
                    + "           ,[Status]\n"
                    + "           ,[Order_txt]\n"
                    + "           ,[Email]\n"
                    + "           ,[SDT]\n"
                    + "           ,[httt])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);

            statement.setInt(1, order.getOrderID());
            statement.setString(2, order.getAccountID());
            statement.setDate(3, order.getOrderDate());
            statement.setString(4, order.getAddress());
            statement.setInt(5, order.getTotalPrice());
            statement.setInt(6, order.getStatus());
            statement.setString(7, order.getOrder_txt());
            statement.setString(8, order.getEmail());
            statement.setString(9, order.getSDT());
            statement.setInt(10, order.getHttt());
            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    ---------------Update-------------------
    public void duyet(int OrderID, int status) {
        try {
            String sql = "UPDATE [dbo].[Orders]\n"
                    + "   SET [Status] = ?\n"
                    + " WHERE OrderID = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setInt(1, status);
            statement.setInt(2, OrderID);
            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public void setByAdmin(int OrderID, String diachi, String sdt) {
          try {
            String sql = "UPDATE [dbo].[Orders]\n"
                    + "   SET [Address] = ?,"
                    + "         [SDT] = ?\n"
                    + " WHERE OrderID = ?";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            statement.setString(1, diachi);
            statement.setString(2, sdt);
             statement.setInt(3, OrderID);
            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    ---------------Delete-------------------

    
}
