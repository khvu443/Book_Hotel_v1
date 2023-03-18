/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO.RoleDAO;

import Connect.ConnectSQL;
import Model.Role;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author lenovo
 */
public class RoleDAO {
    
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
        public ArrayList<Role> getAllRole() {
        ArrayList<Role> rl = new ArrayList<>();
        String query = "select * from roleDetail";
        try {
            conn = new ConnectSQL().makeConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                rl.add(new Role(
                        rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
            System.out.println("Error in get all role: " + e);
        }
        return rl;
    }
    
}
