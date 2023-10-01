package com.octest.servlets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
public class UserConnection {
	 private Connection connexion;
	 
	 private void loadDatabase() {
	        // Chargement du driver
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	        } catch (ClassNotFoundException e) {
	        }

	        try {
	            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaee", "root","hajar123");
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	 
	 public void ajouterUser(User user) {
	        loadDatabase();
	        
	        try {
	            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO users(username,password,email,phone,company,adress) VALUES(?, ?, ?, ?, ?, ?);");
	            preparedStatement.setString(1,user.getUsername());
	            preparedStatement.setString(2, user.getPassword());
	            preparedStatement.setString(3, user.getEmail());
	            preparedStatement.setInt(4, user.getPhone());
	            preparedStatement.setString(5, user.getCompany());
	            preparedStatement.setString(6, user.getAdress());
	          
	            
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	  public List<User> recupererUsers() {
	        List<User> users = new ArrayList<User>();
	        Statement statement = null;
	        ResultSet resultat = null;

	        loadDatabase();
	        
	        try {
	            statement = connexion.createStatement();

	            // Exécution de la requête
	            resultat = statement.executeQuery("SELECT username,password,email,phone,company,adress FROM users;");

	            // Récupération des données
	            while (resultat.next()) {
	                String username = resultat.getString("username");
	                String password = resultat.getString("password");
	                String email=resultat.getString("email");
	                int phone=resultat.getInt("phone");
	                String company =resultat.getString("company");
	                String adress=resultat.getString("adress");
	                User user=new User();
	                user.setUsername(username);
	                user.setPassword(password);
	                user.setEmail(email);
	                user.setPhone(phone);
	                user.setCompany(company);
	                user.setAdress(adress);
	                users.add(user);
               
	            }
	        } catch (SQLException e) {
	        } finally {
	            // Fermeture de la connexion
	            try {
	                if (resultat != null)
	                    resultat.close();
	                if (statement != null)
	                    statement.close();
	                if (connexion != null)
	                    connexion.close();
	            } catch (SQLException ignore) {
	            }
	        }
	        
	        return users;
	        
	    }
	
}
