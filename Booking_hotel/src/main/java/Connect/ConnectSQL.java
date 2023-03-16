/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Connect;


import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectSQL {

    public Connection makeConnection()throws Exception {
        String url = "jdbc:sqlserver://"+serverName+":"+portNumber + "\\" + instance +";databaseName="+dbName;
        if(instance == null || instance.trim().isEmpty())
            url = "jdbc:sqlserver://"+serverName+":"+portNumber +";databaseName="+dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }   
    
    private final String serverName = "LAPTOP-9FFCD11F";
    private final String dbName = "Book_hotel";
    private final String portNumber = "1433";
    private final String instance="";
    private final String userID = "sa";
    private final String password = "binbo123";
    
    public static void main(String[] args) {
        try
        {
            System.out.println(new ConnectSQL().makeConnection());
        }catch(Exception e)
        {
            
        }
    }
}