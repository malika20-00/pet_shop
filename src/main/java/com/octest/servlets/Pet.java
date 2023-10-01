package com.octest.servlets;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Calendar;

public class Pet {
private	String name;
private	String description;
private	String photo;
private	float prix;
private	String couleur;

private Float promotion;
private String category;
private int Id;
private Date petDate;

public Pet(int id,String name, String description, String photo, float prix, String couleur, float promotion, Date petDate,String category) {
	super();
	this.name = name;
	this.description = description;
	this.photo = photo;
	this.prix = prix;
	this.couleur = couleur;
	this.promotion = promotion;
	this.category = category;
	Id = id;
	this.petDate = petDate;
}
public Pet(ResultSet result) {
	try {
		this.Id=result.getInt("id");
		this.name = result.getString("name");
		this.photo =  result.getString("image");
		this.description =  result.getString("description");
		this.couleur =  result.getString("color");
		this.prix =  result.getFloat("price");
		this.promotion = result.getFloat("promotion");
		this.petDate = result.getDate("date");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}





public Pet() {
	// TODO Auto-generated constructor stub
}






public String getCategory() {return category;}
public void setCategory(String category) {this.category=category;}
public Date getPetDate() {
	return petDate;
}
public void setPetDate(Date petDate) {
	this.petDate = petDate;
}
public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
}



public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getPhoto() {
	return photo;
}
public void setPhoto(String photo) {
	this.photo= photo;
}
public float getPrix() {
	return prix;
}
public void setPrix(float prix) {
	this.prix = prix;
}
public String getCouleur() {
	return couleur;
}
public void setCouleur(String couleur) {
	this.couleur = couleur;
}
public Float getPromotion() {
	return promotion;
}
public void setPromotion(Float promotion) {
	this.promotion = promotion;
}

public boolean verificierNew() {
	long jours=0;
	try {
	 Calendar c = Calendar.getInstance();
	 c.setTime(this.getPetDate());
	
	 LocalDateTime aujourdhui=LocalDateTime.now();
	 aujourdhui.getDayOfMonth();
	 LocalDateTime timepets=LocalDateTime.of(c.get(Calendar.YEAR),c.get( Calendar.MONTH)+1, c.get(Calendar.DATE),c.get(Calendar.HOUR),c.get(Calendar.MINUTE));
	//jours=ChronoUnit.DAYS.between( timepets,aujourdhui);
	//jours= aujourdhui.getDayOfMonth()-c.get(Calendar.DATE);
	// jours=(aujourdhui.getYear()*365 +(aujourdhui.getMonth().getValue()*30 +1)+ aujourdhui.getDayOfMonth())-(c.get(Calendar.YEAR)*365+(c.get(Calendar.MONTH)*30+1)+c.get(Calendar.DATE));
	// long diffInDays = date1.until(date2, ChronoUnit.DAYS);
	 jours=timepets.until(aujourdhui,ChronoUnit.DAYS);
	
	}
	catch(Exception e) {
		System.out.println("erreur");
	
	}
	 return jours<30;
}
	

}

