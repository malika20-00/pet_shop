package project.controllers.administration;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.servlets.Pet;
import project.models.PetDb;

/**
 * Servlet implementation class AddPet
 */
@WebServlet("/AddPet")
public class AddPet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    Pet pet;
    PetDb pD;
    Date addingDate;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		int id=0;
		String name=request.getParameter("name");
		String image=request.getParameter("image");
		String description=request.getParameter("description");
		String color=request.getParameter("color");
		float price= Float.parseFloat(request.getParameter("price"));
		float promotion=Float.parseFloat(request.getParameter("promotion"));
		String category=request.getParameter("categorie");
		
		addingDate=(Date) Calendar.getInstance().getTime();
		
		
		pet=new Pet(id, name,description,image, price,color,promotion,addingDate,category);
		pD=new PetDb(pet);
		try {
			pD.addPet();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("Pets");

	}
     
}
