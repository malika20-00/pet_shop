package project.controllers.administration;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/administration/login.html").forward(request, response);
		//response.sendRedirect("WEB-INF/jsp/administration/login.html");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		String passwd=request.getParameter("passwd");
		if(username.equals("mohd")&&passwd.equals("mohd")) {
			//this.getServletContext().getRequestDispatcher("/Pets").forward(request, response);
			response.sendRedirect("Pets");
		}else {
			this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/administration/login.html").forward(request, response);
			//response.sendRedirect("WEB-INF/jsp/administration/login.html");
		}
	}

}
