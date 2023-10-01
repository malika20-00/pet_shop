package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	private static Connection connection;
    private static String bdd="pet_shop";
    private static String url="jdbc:mysql://localhost:3306/"+bdd;
    private static String user="root";
    private static String passwd="";
	//creation of method that will return a Connection object
	public static Connection getConnection() {
		
		
			try {
				Class.forName("java.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			 try {
				connection=DriverManager.getConnection(url, user, passwd);
				return connection;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}	
	}
}
