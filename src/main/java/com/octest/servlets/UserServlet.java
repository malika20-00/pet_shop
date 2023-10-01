package com.octest.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Userdao userdao = new Userdao();
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("Register.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		String Message = request.getParameter("Message");
		String Name = request.getParameter("Name");
		String Email = request.getParameter("Email");
		int Phone =Integer.parseInt(request.getParameter("Phone"));
		String Company = request.getParameter("Company");
       
		Usermsg user = new Usermsg();
		user.setMessage(Message);
		user.setEmail(Email);
		user.setName(Name);
		user.setPhone(Phone);
		user.setCompany(Company);
		
		try {
			userdao.insertUser(user);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("Apres.jsp");
		dispatcher.forward(request, response);
	}

}
