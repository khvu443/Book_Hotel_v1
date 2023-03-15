/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.booking_hotel.Model;

/**
 *
 * @author lenovo
 */
public class Account {
    private int ID;
    private String username;
    private String password;
    private String fullname;
    private int roleID;
    private int statusAcc;

    public Account() {
    }

    public Account(int ID, String username, String password, String fullname, int roleID, int statusAcc) {
        this.ID = ID;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.roleID = roleID;
        this.statusAcc = statusAcc;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public int getStatusAcc() {
        return statusAcc;
    }

    public void setStatusAcc(int statusAcc) {
        this.statusAcc = statusAcc;
    }

    @java.lang.Override
    public java.lang.String toString() {
        return "Account{" +
                "ID=" + ID +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", fullname='" + fullname + '\'' +
                ", roleID=" + roleID +
                ", statusAcc=" + statusAcc +
                '}';
    }
}
