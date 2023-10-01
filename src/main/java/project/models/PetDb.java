package project.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.DbConnection;
import com.octest.servlets.Pet;

public class PetDb {
	
       private Pet pet;
       private PreparedStatement st;
       private Connection connection;
       private ResultSet result;
       
	   private String add="INSERT INTO pet VALUES (?,?,?,?,?,?,?,?,?)";
	   private String select="SELECT * FROM pet";
	   private String update="UPDATE pet SET name=?,description=?,photo=?,"
	   		+ "prix=?,couleur=?,promotion=?,"
	   		+ "petDate=?,categorie=? where id=?";
	   private String delete="delete from pet where id=?";
	   
	   public PetDb(Pet pet) {
		super();
		this.pet = pet;
	   }
	   public PetDb() {
		// TODO Auto-generated constructor stub
	}
	public void addPet() throws SQLException {
		connection=DbConnection.getConnection();
		try {
			st = connection.prepareStatement(add);
			   st.setInt(1, pet.getId());
			   st.setString(2,pet.getName());
			   st.setString(3,pet.getPhoto());
			   st.setString(4,pet.getDescription());
			   st.setString(5,pet.getCouleur());
			   st.setFloat(6,pet.getPrix());
			   st.setFloat(7, pet.getPromotion());
			   st.setString(9,pet.getCategory());
			   st.setDate(10,pet.getPetDate());
			   
			   int res=st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			   connection.close();
		   }
	   }
	   public  Pet getPet(int id) {
		   connection=DbConnection.getConnection();
		   Pet pet=null;
		   List<Pet> pets=new ArrayList<Pet>();
		   try {
				st=connection.prepareStatement("SELECT * FROM pet where id=(?)");
				st.setInt(1, id);
				result=st.executeQuery();
				while(result.next()) {
			    pets.add(new Pet(result));
				}
				pet=pets.get(0);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   return pet;
	   }
	   public ArrayList<Pet> getPets() {
		   connection=DbConnection.getConnection();
		   ArrayList<Pet> pets=new ArrayList<Pet>();
		   try {
			st=connection.prepareStatement(select);
		    result=st.executeQuery();
		    while(result.next()) {
		    	pets.add(new Pet(result));
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return pets;
		   
	   }
	   public void updatePet(int id) throws SQLException {
			connection=DbConnection.getConnection();
			try {
				st=connection.prepareStatement(update);
				   st.setString(1,pet.getName());
				   st.setString(2,pet.getDescription());
				   st.setString(3,pet.getPhoto());
				   st.setFloat(4,pet.getPrix());
				   st.setString(5,pet.getCouleur());
				   st.setFloat(6, pet.getPromotion());
				   st.setDate(7,pet.getPetDate());
				   st.setString(8,pet.getCategory());
				   st.setInt(9, id);
				   st.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				   connection.close();
			   }
            
	   }
	   public void delete(int id) throws SQLException {
		connection=DbConnection.getConnection();
		   try {
			st=connection.prepareStatement(delete);
			st.setInt(1, id);
			int res=st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			   connection.close();
		}
	   }
	   
}
