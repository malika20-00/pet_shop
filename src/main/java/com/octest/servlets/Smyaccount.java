package com.octest.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Smyaccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Smyaccount() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 List<User> users = new ArrayList<User>();
		 UserConnection tableUsers=new UserConnection();
		 users=tableUsers.recupererUsers();
		 for (User u : users) {
	           if(u.getUsername().equals(request.getParameter("username")) && u.getPassword().equals(request.getParameter("password"))) {
	        	   String resultat="vous etes connectes";
	        	   request.setAttribute("resultat",resultat);
	        	   this.getServletContext().getRequestDispatcher("/myaccount.jsp").forward(request, response);
	           }}

		 String resultat="les information sont incorrects";
  	   request.setAttribute("resultat",resultat);
  	   this.getServletContext().getRequestDispatcher("/myaccount.jsp").forward(request, response);
		 
	}

}
