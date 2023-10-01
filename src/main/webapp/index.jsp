<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.ArrayList" %>
     <%@ page import="java.util.List" %>
      <%@ page import="com.octest.servlets.Pet" %>
           <%@ page import="java.time.LocalDateTime" %> 
            <%@ page import="java.sql.Date" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Pet Shop</title>
<link rel="stylesheet" type="text/css" href="style.css" />

</head>
<body>
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="index.jsp">home</a></li>
            <li><a href="about.jsp">about us</a></li>
            <li><a href="category.jsp">pets</a></li>
            <li><a href="specials.jsp">specials pets</a></li>
            <li><a href="myaccount.jsp">my accout</a></li>
            <li><a href="details.jsp">buy</a></li>
            <li><a href="contact.jsp">contact</a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       
       	<div class="left_content">
        	
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Featured pets</div>
        
         <% 
         List<Pet>  pets= new ArrayList<Pet>();
         
         pets=(List) application.getAttribute("pets");
                   
                    for(Pet pet:pets){
                	%>
        
        	<div class="feat_prod_box">
            
            	<div class="prod_img"><a href="details.jsp"><img src="<%=pet.getPhoto() %>" alt="" title="" border="0" style="width:125px;height:110px"/></a></div>
                
                
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title"><%=pet.getName() %></div>
                    <p class="details"><%=pet.getDescription() %></p>
                    <a href="ServletPrincipale?Id=<%=pet.getId() %>" class="more">- more details -</a>
                    <div class="clear"></div>
                    </div>
                    
                  
                </div>    
            <div class="clear"></div>
            </div>	
            
             <% }%>
        	
            
        <div class="clear"></div>
        </div><!--end of left content-->
        
         <jsp:include page="rightContent.jsp"/>
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
            <jsp:include page="footer.jsp"/>  
      
    

</div>

</body>
</html>