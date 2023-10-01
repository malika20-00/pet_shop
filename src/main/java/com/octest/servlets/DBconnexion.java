package com.octest.servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnexion {

    private static Connection con=null;
    
    private DBconnexion()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/javaee", "root","hajar123");
        }
        catch(ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        catch(SQLException e1)
        {
            e1.printStackTrace();
        }
    }
    public static Connection getInstance()
    {
        if(con==null)
            new DBconnexion();
        return con;
            
        
    }
}
