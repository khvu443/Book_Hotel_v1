/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.booking_hotel.DAO.AccountDAO;

import com.example.booking_hotel.Model.Account;
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
public class AccountDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Account> getAccountList() {
        List<Account> list = new ArrayList<>();
        String query = "SELECT * from [Account]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(
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

    public boolean addUser(String userName, String password, String fullName, int roleID, int statusAcc) {
        String query = "INSERT INTO [Account] VALUES (?, ?, ?,?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, fullName);
            ps.setInt(4, roleID);
            ps.setInt(5, statusAcc);
            ps.executeUpdate();
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    public void deleteUserByID(int id) {
        String query = "delete from [Account]\n"
                + "where accID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateUser(int id,String password,String fullname) {
        String query = "update [Account] set password = ?," +
                " fullname = ? " +
                "where accID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, fullname);
            ps.setInt(3,id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }



    public static void main(String[] args) {
        AccountDAO test = new AccountDAO();
        test.updateUser(7, "1234","khanhtoan");
    }
}
