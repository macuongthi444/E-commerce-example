/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import model.Cart;
import model.Person;
import model.Item;

/**
 *
 * @author hoang
 */
public class OrderDAO extends DBContext {

    public void addOrder(Person cus, Cart cart) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        try {
            String sql = "insert into [Order]([date],[PersonID],[totalmoney]) values(?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
           //ps.setInt(1, cus.getPersonID());
            ps.setString(1, date);
            ps.setDouble(2, cus.getPersonID());
            ps.setDouble(3, cart.getTotal());
            ps.executeUpdate();
            String sql1 = "select top 1 id from [Order] order by id desc";
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            ResultSet rs = ps1.executeQuery();
            if (rs.next()) {
                int oid = rs.getInt(1);
                
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into [OrderLine]([OrderID],[ProductID],[quantity],[price]) values(?,?,?,?)";
                    PreparedStatement ps2 = connection.prepareStatement(sql2);
                    ps2.setInt(1, oid);
                    ps2.setInt(2, i.getProduct().getProductID());
                    ps2.setDouble(3, i.getQuantity());
                    ps2.setDouble(4, i.getPrice());
                    ps2.executeUpdate();
                }
            }

        } catch (SQLException e) {
        }
    }
}
