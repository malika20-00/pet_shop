package com.octest.servlets;

public class Usermsg {
	private int IdMessage;
	private String Message;
    private String Name;
    private String Email;
    private int Phone;
    private String Company;
	public Usermsg(int idMessage, String message, String name, String email, int phone, String company) {
		IdMessage = idMessage;
		Message = message;
		Name = name;
		Email = email;
		Phone = phone;
		Company = company;
	}
	
	public Usermsg(String message, String name, String email, int phone, String company) {
		Message = message;
		Name = name;
		Email = email;
		Phone = phone;
		Company = company;
	}

	public Usermsg() {
		// TODO Auto-generated constructor stub
	}

	public int getIdMessage() {
		return IdMessage;
	}
	public void setIdMessage(int idMessage) {
		IdMessage = idMessage;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public int getPhone() {
		return Phone;
	}
	public void setPhone(int phone2) {
		Phone = phone2;
	}
	public String getCompany() {
		return Company;
	}
	public void setCompany(String company) {
		Company = company;
	}

}
