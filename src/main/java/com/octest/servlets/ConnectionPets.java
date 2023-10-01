package com.octest.servlets;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
public class ConnectionPets {
 private static Connection connexion;
	 
	 private static void loadDatabase() {
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
	 public List<Pet> recupererPets() {
	        List<Pet> pets = new ArrayList<Pet>();
	        Statement statement = null;
	        ResultSet resultat = null;

	        loadDatabase();
	        
	        try {
	            statement = connexion.createStatement();

	            // Exécution de la requête
	            resultat = statement.executeQuery("SELECT name,description,photo,prix,couleur,promotion,Id,petDate,categorie FROM pets;");

	            // Récupération des données
	            while (resultat.next()) {
	                String name = resultat.getString("name");
	                String description = resultat.getString("description");
	                String photo=resultat.getString("photo");
	                float prix=resultat.getFloat("prix");
	                String couleur =resultat.getString("couleur");
	               
	                float promotion=resultat.getFloat("promotion");
	                String category=resultat.getString("categorie");
	                int Id=resultat.getInt("Id");
	                Date petDate=resultat.getDate("petDate");
	                
	               Pet pet=new Pet();
	               pet.setName(name);
	               pet.setDescription(description);
	               pet.setPhoto(photo);
	               pet.setPrix(prix);
	               pet.setCouleur(couleur);
	             
	               pet.setPromotion(promotion);
	              pet.setCategory(category);
	               pet.setId(Id);
	               pet.setPetDate(petDate);
	               pets.add(pet);
	              
	            }
	        } catch (SQLException e) {
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
	        
	        return pets;
	        
	    }
	 public static Pet recuperer1pet(int id) {
		 
		 Statement statement = null;
	        ResultSet resultat = null;
	        Pet pet=new Pet();
	        loadDatabase();
	        try {
	            statement = connexion.createStatement();

	            // Exécution de la requête
	            resultat = statement.executeQuery("SELECT name,description,photo,prix,couleur,promotion,Id,petDate,categorie FROM pets;");
	           
	            // Récupération des données
	            
	            while (resultat.next()) {
	            	if(resultat.getInt("Id")==id) {
	            		
	                    String name = resultat.getString("name");
		                String description = resultat.getString("description");
		                String photo=resultat.getString("photo");
		                float prix=resultat.getFloat("prix");
		                String couleur =resultat.getString("couleur");
		               
		                float promotion=resultat.getFloat("promotion");
		                String category=resultat.getString("categorie");
		                int Id=resultat.getInt("Id");
		                Date petDate=resultat.getDate("petDate");
		                
		              
		               pet.setName(name);
		               pet.setDescription(description);
		               pet.setPhoto(photo);
		               pet.setPrix(prix);
		               pet.setCouleur(couleur);
		             
		               pet.setPromotion(promotion);
		              pet.setCategory(category);
		               pet.setId(Id);
		               pet.setPetDate(petDate);
	              
	            }}
	        } catch (SQLException e) {
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
	        
	        return pet;
	        
	 }

}
