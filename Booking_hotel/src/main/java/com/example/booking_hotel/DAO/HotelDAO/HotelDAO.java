/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.booking_hotel.DAO.HotelDAO;

import com.example.booking_hotel.Model.Account;
import com.example.booking_hotel.Model.Hotel;
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
public class HotelDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Hotel> getHotelList() {
        List<Hotel> list = new ArrayList<>();
        String query = "SELECT * from [hotel]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Hotel(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

    public boolean addHotel(String nameHotel, String address, String image, int number_room, int amount,String type) {
        String query = "INSERT INTO [Hotel] VALUES (?, ?, ?,?,?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, nameHotel);
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
    public void deleteHotelByID(int id) {
        String query = "delete from [Hotel]\n"
                + "where hotelID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateHotel(int id,String nameHotel, String address, String image, int number_room, int amount,String type) {
        String query = "update [Hotel] set name_hotel = ?," +
                " address = ?, image = ?, number_room = ?, amount = ?, type = ?  " +
                "where hotelID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, nameHotel);
            ps.setString(2, address);
            ps.setString(3, image);
            ps.setInt(4, number_room);
            ps.setInt(5, amount);
            ps.setString(6,type);
            ps.setInt(7,id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        HotelDAO test = new HotelDAO();
//        test.updateHotel(2,"updated","ABC city","",1,1,"nha tu");
        test.deleteHotelByID(2);
    }
    
}
