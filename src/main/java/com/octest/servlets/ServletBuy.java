package com.octest.servlets;
import com.octest.servlets.*;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletBuy extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ServletBuy() {
        super();
        
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
    	
    	 if(request.getSession().getAttribute("buy") == null)
             request.getSession().setAttribute("buy", new Buy());
         
         Buy p = (Buy)request.getSession().getAttribute("buy");
     
       PetDao dao = new PetDao();
       int id = Integer.parseInt(request.getParameter("id"));
       Pet a = dao.findByID(id);


       if(request.getParameter("op") == null || a == null)
       {
           response.sendRedirect(request.getParameter("sender") + "?id="+id+"&failed");
           return ;
       }
       if(request.getParameter("op").equals("add"))
       {
           p.addPet(a);
           response.sendRedirect(request.getParameter("sender") + "?id="+id+"&succes");
       }
       
       if(request.getParameter("op").equals("sous"))
       {
           p.sousPet(a);
           response.sendRedirect(request.getParameter("sender") + "?id="+id+"&succes");
       }
   }

   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		processRequest(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}

       
}
