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

    public boolean addOrder(String nameOrder, String address, String image, int number_room, int amount,String type) {
        String query = "INSERT INTO [Order] VALUES (?, ?, ?,?,?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, nameOrder);
            ps.setString(2, address);
            ps.setString(3, image);
            ps.setInt(4, number_room);
            ps.setInt(5, amount);
            ps.setString(6,type);
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
        String query = "update [Order] set accoutnID = ?," +
                " hotelID = ?, address = ?, check_in = ?,check_out = ?, guests = ?, room = ?  " +
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
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        OrderDAO test = new OrderDAO();
        System.out.println(test.getOrderList());
    }
}
