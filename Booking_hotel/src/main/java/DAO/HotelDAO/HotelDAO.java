/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO.HotelDAO;

import Connect.ConnectSQL;
import java.util.*;
import java.sql.*;
import Model.*;

public class HotelDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //lay danh sach khach san
    public ArrayList<Hotel> viewAllHotel() {
        ArrayList<Hotel> hotels = new ArrayList<Hotel>();
        String query = "select * from Hotel";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                hotels.add(new Hotel(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7)
                ));
            }
            return hotels;
        } catch (Exception e) {
            System.out.println("Error in display all: " + e.getMessage());
            return null;
        }
    }

    
    //Lay thong tin khach san = id
    public Hotel getHotel(int id) {
        String query = "select * from Hotel where hotelID = ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Hotel(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7)
                );
            }
            return null;
        } catch (Exception e) {
            System.out.println("Error in display hotel by address: " + e.getMessage());
            return null;
        }
    }

    //Lấy toàn bộ danh hotel dựa vào địa chỉ và số lượng phòng phải nhỏ hơn số hiện có
    // like %% -> check xem có chứa kí tự đó ko
    public ArrayList<Hotel> viewAllHotelByAddress(String address, int rooms) {
        ArrayList<Hotel> hotels = new ArrayList<Hotel>();
        String query = "select * from Hotel where  address like ? and number_room > ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + address + "%");
            ps.setInt(2, rooms);
            rs = ps.executeQuery();
            while (rs.next()) {
                hotels.add(new Hotel(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7)
                ));
            }
            return hotels;
        } catch (Exception e) {
            System.out.println("Error in display hotel by address: " + e.getMessage());
            return null;
        }
    }

    //Dùng để phân trang
    // offset ... fetch ... ->Chúng cho phép bạn giới hạn số lượng bản ghi được trả về bởi một truy vấn.
    // "OFFSET" là xác định điểm bát đầu và "FETCH" là cung cấp số lượng hàng trả về
    public ArrayList<Hotel> paginationHotels(String address, int page, int room) {
        ArrayList<Hotel> hotels = new ArrayList<Hotel>();
        String query = "  select * from hotel where address like ? and number_room > ? order by hotelID asc offset ? rows FETCH NEXT 4 ROWS ONLY";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + address + "%");
            ps.setInt(2, room);
            ps.setInt(3, page);
            rs = ps.executeQuery();
            while (rs.next()) {
                hotels.add(new Hotel(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7)
                ));
            }
            return hotels;
        } catch (Exception e) {
            System.out.println("Error in display hotel page by address: " + e.getMessage());
            return null;
        }
    }

    //Cập nhật hotel
    public boolean updateHotel(Hotel h) {
        String query = "update hotel set name_hotel = ?, address =?, image = ?, amount = ?, type=? , number_room = ? where hotelID = ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, h.getName_hotel());
            ps.setString(2, h.getAddress());
            ps.setString(3, h.getImage());
            ps.setFloat(4, h.getAmount());
            ps.setString(5, h.getType());
            ps.setInt(6, h.getNumber_room());
            ps.setInt(7, h.getHotelID());

            ps.executeUpdate();

            return true;
        } catch (Exception e) {
            System.out.println("Error in update hotel: " + e.getMessage());
            return false;
        }
    }

    //thêm hotel
    public boolean addHotel(Hotel h) {

        try {
            String query = "  insert into hotel (name_hotel, hotel.address, hotel.image, number_room, amount, hotel.type) \n"
                    + "  values (?, ?, ?, ?, ?, ?)";
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, h.getName_hotel());
            ps.setString(2, h.getAddress());
            ps.setString(3, h.getImage());
            ps.setInt(4, h.getNumber_room());
            ps.setFloat(5, h.getAmount());
            ps.setString(6, h.getType());

            ps.executeUpdate();

            return true;
        } catch (Exception e) {
            System.out.println("Error in add hotel: " + e);
            return false;
        }
    }
}
