package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Orders;

public class OrdersDAO {

    private final DBContext conn = new DBContext();

//  -----------------GET--------------------
    public ArrayList<Orders> getAll() {
        ArrayList<Orders> List_Orders = new ArrayList<>();
        try {
            String sql = "Select * From Orders";
            PreparedStatement statement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Orders o = new Orders(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
                List_Orders.add(o);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return List_Orders;
    }

//    ---------------Insert-------------------
    public void insertOrders(Orders order) {
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
//    ---------------Delete-------------------
}