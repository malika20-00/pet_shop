package com.octest.servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Userdao {
      
        public int insertUser(Usermsg user) throws ClassNotFoundException {
        	 String INSERT_USERS_SQL="INSERT INTO message (message,username,email,phone,company) VALUES "+"(?,?,?,?,?);";
        	 int result=0;
        	 Class.forName("com.mysql.cj.jdbc.Driver");
        	
        	 try 
						{
        		 Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/javaee?useSSL=false","root","hajar123");
 				PreparedStatement preparedStatement= connection.prepareStatement(INSERT_USERS_SQL);
 	            
        		
        		       // preparedStatement.setInt(1,1);
	            		preparedStatement.setString(1,user.getMessage());
	         			preparedStatement.setString(2,user.getEmail());
	         			preparedStatement.setString(3,user.getName());
	         			preparedStatement.setInt(4,user.getPhone());
	         			preparedStatement.setString(5,user.getCompany());
	         			System.out.println(preparedStatement);
	         			result=preparedStatement.executeUpdate();
	             }catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
          return result;
        }
     }
	

