package com.octest.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServletPrincipale extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServletPrincipale() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//this.getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
		// List<Pet>  pets= new ArrayList<Pet>();
			ConnectionPets tablePets=new ConnectionPets();
			//pets=tablePets.recupererPets();
			
			
			 if(!String.valueOf(request.getParameter("Id")).equals("null")){
				 
				 int id= Integer.parseInt(request.getParameter("Id"));
				request.setAttribute("pet", tablePets.recuperer1pet(id));
				
				 this.getServletContext().getRequestDispatcher("/details.jsp").forward(request, response);
			 }
			 if(!String.valueOf(request.getParameter("category")).equals("null")){
      if(String.valueOf(request.getParameter("category")).equals("accessoire")){
				  request.setAttribute("category", "accessoire");
				  this.getServletContext().getRequestDispatcher("/categoryPets.jsp").forward(request, response);
			 }
			 
			
      else if(String.valueOf(request.getParameter("category")).equals("hollidays gifts")){
	  request.setAttribute("category", "hollidays gifts");
	  this.getServletContext().getRequestDispatcher("/categoryPets.jsp").forward(request, response);
}
      else if(String.valueOf(request.getParameter("category")).equals("pets gifts")){
    	  request.setAttribute("category", "pets gifts");
    	  this.getServletContext().getRequestDispatcher("/categoryPets.jsp").forward(request, response);
    }
			 }
			 request.setAttribute("pets", tablePets.recupererPets());
			 System.out.print(tablePets.recupererPets());
			 this.getServletContext().getRequestDispatcher("/file.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		 User user=new User();
		 user.setUsername(request.getParameter("username"));
		 user.setPassword(request.getParameter("password"));
		 user.setEmail(request.getParameter("email"));
		 user.setPhone(Integer.parseInt(request.getParameter("phone")));
		 user.setCompany(request.getParameter("company"));
		 user.setAdress(request.getParameter("adress"));
		 UserConnection tableUsers=new UserConnection();
		 tableUsers.ajouterUser(user);
//		 request.setAttribute("users", tableUsers.recupererUsers());
		 
		 List<Pet>  pets= new ArrayList<Pet>();
		ConnectionPets tablePets=new ConnectionPets();
		pets=tablePets.recupererPets();
		 request.setAttribute("pets", tablePets.recupererPets());
		 this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);


	}

}
