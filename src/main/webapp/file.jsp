<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
     <%@ page import="java.util.List" %>
      <%@ page import="com.octest.servlets.Pet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% List<Pet>  pets= new ArrayList<Pet>();
                    pets=(List) request.getAttribute("pets");
                    Pet pet=new Pet();
                    		
                    application.setAttribute("pets",pets);
                   
                	%>
                	<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>