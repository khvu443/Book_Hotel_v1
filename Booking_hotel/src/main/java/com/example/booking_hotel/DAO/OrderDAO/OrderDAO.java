/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.booking_hotel.DAO.OrderDAO;

import com.example.booking_hotel.Model.Order;
import com.example.booking_hotel.context.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lenovo
 */
public class OrderDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Order> getOrderList() {
        List<Order> list = new ArrayList<>();
        String query = "SELECT * from [Order]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

    public boolean addOrder(int oderId,int accountID,int hotelID, String address, String check_in,String check_out, int guests, int room) {
        String query = "INSERT INTO [Order] VALUES (?, ?, ?,?,?,?,?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, oderId);
            ps.setInt(2, accountID);
            ps.setInt(3, hotelID);
            ps.setString(4, address);
            ps.setString(5, check_in);
            ps.setString(6, check_out);
            ps.setInt(7, guests);
            ps.setInt(8,room);
            ps.executeUpdate();
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    public void deleteOrderByID(int id) {
        String query = "delete from [Order]\n"
                + "where orderID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateOrder(int orderId,int accountID, int hotelID, String address, String check_in, String check_out,int guests, int rooms) {
        String query = "update [Order] set accountID = ?," +
                " hotelID = ?, address = ?, check_in = ?,check_out = ?, guests = ?, rooms = ?  " +
                "where orderID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, accountID);
            ps.setInt(2, hotelID);
            ps.setString(3, address);
            ps.setString(4, check_in);
            ps.setString(5, check_out);
            ps.setInt(6,guests);
            ps.setInt(7,rooms);
            ps.setInt(8,orderId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        OrderDAO test = new OrderDAO();
        test.addOrder(3,7,1,"Da Nang city","12:00 AM","19:00 PM",10,4);
//        System.out.println(test.getOrderList().get(1));
    }
}
