/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO.OrderDAO;

import Connect.ConnectSQL;
import java.util.*;
import java.sql.*;
import Model.*;

public class OrderDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //Lưu Order vào db - id tự tăng
    public boolean saveOrder(Order o) {
        String query = "insert into  [dbo].[Order] values(?,?,?,?,?,?,?,?)";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, o.getAccountId());
            ps.setInt(2, o.getHotelId());
            ps.setString(3, o.getAddress());
            ps.setString(4, o.getCheck_in());
            ps.setString(5, o.getCheck_out());
            ps.setInt(6, o.getGuests());
            ps.setInt(7, o.getRooms());
            ps.setDouble(8, o.getPrice());

            ps.executeUpdate();

            return true;
        } catch (Exception e) {
            System.out.println("Error in save order: " + e.getMessage());
            return false;
        }
    }

    //Xem toàn bộ Order
    public List<Order> viewAllOrder() {
        List<Order> orders = new ArrayList<Order>();
        String query = "select * from  [dbo].[Order]";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                orders.add(new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getDouble(9)
                ));
            }
        } catch (Exception e) {
            System.out.println("Error in display all: " + e.getMessage());
            return null;
        }

        return orders;
    }

    //Xem danh sách của order của customer
    public List<Order> viewOrderByAccID(int id) {
        List<Order> orders = new ArrayList<Order>();
        String query = "select * from  [dbo].[Order] where accountID = ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                orders.add(new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getDouble(9)
                ));
            }
        } catch (Exception e) {
            System.out.println("Error in display by accId: " + e.getMessage());
            return null;
        }

        return orders;
    }

    //xem thông tin của order dựa vào id
    public Order viewOrderByOrderID(int id) {
        String query = "select * from  [dbo].[Order] where orderId = ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return (new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getDouble(9)
                ));
            }
        } catch (Exception e) {
            System.out.println("Error in display by accId: " + e.getMessage());
            return null;
        }
        return null;
    }
    
    
    //Hủy order
    public boolean deleteOrder(int id) {
        String query = "delete from [dbo].[Order] where orderId = ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("Error in delete order: " + e.getMessage());
            return false;
        }
    }
}
