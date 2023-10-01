<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<%@ page import="com.octest.servlets.Pet" %>
<%@ page import="project.models.PetDb" %>
<%@ page import="database.DbConnection" %>
<%@ page import="java.sql.*" %>
    <%
     int id=(int)request.getAttribute("id");
     PetDb pd=new PetDb();
     Pet pet=pd.getPet(id);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/administration-style/addpet.css"/>

</head>
<body>
<jsp:include page="/WEB-INF/jsp/administration/header.html"></jsp:include>
<div class="add">
      <div>
        <h1>Add New Pet :</h1>
        <form action="UpdatePet" method="post">
          <div class="containner">
            <div>
              <p class="normal">
                <input type="text" name="id" value="<%=id%>"/>
              </p>
              <p class="normal">
                <input type="text" name="name" value="<%=pet.getName() %>"/>
              </p>
              <p class="normal">
                <input type="text" name="image" value="<%=pet.getPhoto() %>" />
              </p>
              <p class="normal">
                <input type="text" name="color" value="<%=pet.getCouleur()%>" />
              </p>
              <p class="normal">
                <textarea
                  name="description"
                  id="description"
                ><%=pet.getDescription()%></textarea>
              </p>
            </div>
            <div>
              <p class="normal">
                <input type="number" name="price" value="<%=pet.getPrix()%>" />
              </p>
              <p class="normal">
                <input type="number" name="promotion" value="<%=pet.getPromotion()%>" />
              </p>
              <select name="categorie" >
                <option value="normal">normal</option>
                <option value="special">special</option>
                <option value="accessory">accessory</option>
                <option value="food">food</option>
              </select>
            </div>
          </div>
          <div class="send"><input type="submit" value="send" /></div>
        </form>
      </div>
    </div>
</body>
</html>