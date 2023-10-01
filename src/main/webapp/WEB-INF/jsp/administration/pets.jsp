<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.octest.servlets.Pet" %>
<%@ page import="project.models.PetDb" %>
<%@ page import="database.DbConnection" %>
<%@ page import="java.sql.*" %>

<%
	 PetDb pd=new PetDb();
	 ArrayList<Pet> pets=pd.getPets();
  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administration</title>
<link rel="stylesheet" href="./css/administration-style/pets.css"/>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/administration/header.html"></jsp:include>
<jsp:include page="/WEB-INF/jsp/administration/aside.html"></jsp:include>

<section id="pets">
 <% for(Pet pet:pets){ %>
      <div class="pet">
        <div class="info">
          <div class="id"><%= pet.getId() %></div>
          <div class="name"><%=pet.getName() %></div>
          <div class="promotion"><%=pet.getPromotion() %></div>
          <div class="new"><%=pet.getPromotion() %></div>
          <div class="special"><%=pet.getCouleur() %></div>
        </div>
        <div class="btns">
          <a  href="Edit?id=<%=pet.getId()%>"><button class="edit">edit</button></a>
         <a href="DeletePet?id=<%=pet.getId()%>"><button class="delete">delete</button></a>
        </div>
      </div>
      <%} %>
</section>
<a href="Add"><div class="add_btn">add</div></a>
<script type="text/javascript" >
  let addBtn = document.querySelector(".add_btn");
  let addForm = document.querySelector(".add");
  console.log("llklk");
  addBtn.addEventListener("click", function () {
	  console.log("lksdlg");
  addForm.style.display = "block";
  });
</script>
</body>
</html>