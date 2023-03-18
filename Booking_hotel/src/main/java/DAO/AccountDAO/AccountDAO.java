/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO.AccountDAO;

import Connect.ConnectSQL;
import java.util.*;
import java.sql.*;
import Model.*;

public class AccountDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //Lay toan bo danh sach
    public List<Account> getAccountList() {
        List<Account> list = new ArrayList<>();
        String query = "SELECT * from [Account]";
        try {
            conn = new ConnectSQL().makeConnection();
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

    //lay toan bo account dua vao role ID
    public List<Account> getAccountListByRole(int id) {
        List<Account> list = new ArrayList<>();
        String query = "SELECT * from [Account] where roleID = ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
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

    //Lay thong tin cua account dua tren username va password
    public Account getUserInfo(String username, String password) {
        String query = "select * from Account where username = ? and password = ?";
        Account account = new Account();
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                account = new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6)
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return account;
    }

    //Lay thong tin cua account = id
    public Account getUserInfoById(int id) {
        String query = "select * from Account where accID = ? ";
        Account account = new Account();
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                account = new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6)
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return account;
    }

    // Them user vao db - id tu dong tang
    public boolean addUser(String userName, String password, String fullName, int roleID, int statusAcc) {
        String query = "INSERT INTO [Account] VALUES (?, ?, ?,?,?)";

        try {
            conn = new ConnectSQL().makeConnection();
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

    // Cap nhat thong tin user vao db - username ko dc doi
    public void updateUser(int id, String password, String fullname) {
        String query = "  update [Account] set\n"
                + "                [dbo].[Account].password = ?,\n"
                + "                 fullname = ?\n"
                + "                where accID = ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, fullname);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("update error: " + e);
        }
    }

    //Thay doi trang thai cua account - 1 la lock | 0 la unlock
    public void changeStatus(int id, int status) {
        String query = "  update [Account] set\n"
                + "                 statusAcc = ?\n"
                + "                where accID = ?";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, status);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("change error: " + e);
        }
    }

}
