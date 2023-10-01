package com.octest.servlets;

public class User {
	public String username;
	private String password;
	private String email;
	private int phone;
	private String company;
	private String adress;
	
	public String getUsername() {return username;}
	public String getPassword() {return password;}
	public String getEmail() {return email;}
	public int getPhone() {return phone;}
	public String getCompany() {return company;}
	public String getAdress() {return adress;}
	
	public void setUsername(String username) {this.username=username;}
	public void setPassword(String password) {this.password=password;}
	public void setEmail(String email) {this.email=email;}
	public void setPhone(int phone) {this.phone=phone;}
	public void setCompany(String company) {this.company=company;}
	public void setAdress(String adress) {this.adress=adress;}
	
	
	
}
