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

    public boolean saveOrder(Order o) {
        String query = "insert into Order values(?,?,?,?,?,?,?,?)";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, o.getOrderId());
            ps.setInt(2, o.getAccountId());
            ps.setInt(3, o.getHotelId());
            ps.setString(4, o.getAddress());
            ps.setString(5, o.getCheck_in());
            ps.setString(6, o.getCheck_out());
            ps.setInt(7, o.getGuests());
            ps.setInt(8, o.getRooms());

            ps.executeUpdate();

            return true;
        } catch (Exception e) {
            System.out.println("Error in save order: " + e.getMessage());
            return false;
        }
    }

    public List<Order> viewAllOrder() {
        List<Order> orders = new ArrayList<Order>();
        String query = "select * from Order";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                orders.add(new Order(
                        rs.getString(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                ));
            }
        } catch (Exception e) {
            System.out.println("Error in display all: " + e.getMessage());
            return null;
        }

        return orders;
    }

    public List<Order> viewOrderByAccID(int id) {
        List<Order> orders = new ArrayList<Order>();
        String query = "select * from Order where accountID = ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                orders.add(new Order(
                        rs.getString(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                ));
            }
        } catch (Exception e) {
            System.out.println("Error in display by accId: " + e.getMessage());
            return null;
        }

        return orders;
    }

    public boolean deleteOrder(String id) {
        String query = "delete from Order where orderId = ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("Error in delete order: "  + e.getMessage());
            return false;
        }
    }
}
