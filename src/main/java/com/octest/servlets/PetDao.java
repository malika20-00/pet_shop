package com.octest.servlets;

import java.sql.Connection;
import java.sql.ResultSet;

//import com.mysql.cj.xdevapi.Statement;
import java.sql.*;
public class PetDao {
 
    Connection con = DBconnexion.getInstance();	
    
    public boolean add(Pet p)
    {
        try
        {
            String req = "INSERT INTO pets (Id, name, description, photo, prix, couleur,promotion,category,petDate)"
                    + " VALUES (NULL , '" + p.getId() + "', '" + p.getName() + "', '" + p.getDescription() + "', '" + p.getPhoto() + "', '" + p.getPrix() + "','" + p.getCouleur() +"','" + p.getPromotion() + "','" + p.getCategory() + "','" + p.getPetDate() +"');";

            Statement st =  con.createStatement();

            int rs = st.executeUpdate(req);

            if (rs > 0)
            {
                return true;
            }

        } catch (Exception e1)
        {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }

        return false;
    }

    
    public Pet findByID(int id)
    {
        String req = "SELECT* " + " FROM pets " + " WHERE Id = " + id;

        try
        {
            Statement st = con.createStatement();
            ResultSet rs =  st.executeQuery(req);

            Pet p = null;

            if (rs.next())
            {
                //Article(int idArticle, String libelle, String desc, double prix, String img, int qte, Date dateAjout)

                p = new Pet(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getInt(5), rs.getString(6),
                        (float) rs.getInt(7),rs.getDate(8),rs.getString(9));
            }
            return p;

        } catch (Exception e)
        {
            e.printStackTrace();
        }

        return null;
    }
	
}
