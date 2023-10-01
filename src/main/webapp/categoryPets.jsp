<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.ArrayList" %>
     <%@ page import="java.util.List" %>
      <%@ page import="com.octest.servlets.Pet" %>
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
            <li><a href="index.jsp">home</a></li>
            <li><a href="about.jsp">about us</a></li>
            <li><a href="category.jsp">pets</a></li>
            <li class="selected"><a href="specials.jsp">specials pets</a></li>
            <li><a href="myaccount.jsp">my accout</a></li>
          
            <li><a href="details.jsp">buy</a></li>
            <li><a href="contact.jsp">contact</a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
       	 <% List<Pet>  pets= new ArrayList<Pet>();
             pets=(List) application.getAttribute("pets");
             if(String.valueOf(request.getAttribute("category")).equals("accessoire")){%>
        	
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>accessoires</div>
        
        	
             <% 
             for(Pet pet:pets){
            	
            		 if(String.valueOf(pet.getCategory()).equals("accessoire")){
                    	
                	%>
            
        	<div class="feat_prod_box">
            
            	<div class="prod_img"><a href="details.jsp"><img src="<%=pet.getPhoto() %>" alt="" title="" border="0" style="width:125px;height:115px"/></a></div>
                
                <div class="prod_det_box">
                <span class="special_icon"><img src="images/special_icon.gif" alt="" title="" /></span>
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title"><%=pet.getName() %></div>
                    <p class="details"><%=pet.getDescription() %></p>
                    <a href="ServletPrincipale?Id=<%=pet.getId() %>" class="more">- more details -</a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>
            
            
             <%}} }
             else if(String.valueOf(request.getAttribute("category")).equals("hollidays gifts")){%>
         	
             <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>hollidays gifts</div>
         
         	
              <% 
              for(Pet pet:pets){
             	
             		 if(String.valueOf(pet.getCategory()).equals("hollidays gifts")){
                     	
                 	%>
             
         	<div class="feat_prod_box">
             
             	<div class="prod_img"><a href="details.jsp"><img src="<%=pet.getPhoto() %>" alt="" title="" border="0" style="width:125px;height:115px" /></a></div>
                 
                 <div class="prod_det_box">
                 <span class="special_icon"><img src="images/special_icon.gif" alt="" title="" /></span>
                 	<div class="box_top"></div>
                     <div class="box_center">
                     <div class="prod_title"><%=pet.getName() %></div>
                     <p class="details"><%=pet.getDescription() %></p>
                     <a href="ServletPrincipale?Id=<%=pet.getId() %>" class="more">- more details -</a>
                     <div class="clear"></div>
                     </div>
                     
                     <div class="box_bottom"></div>
                 </div>    
             <div class="clear"></div>
             </div> 
                   
             <%}} }
              else if(String.valueOf(request.getAttribute("category")).equals("pets gifts")){%>
         	
             <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>pets gifts</div>
         
         	
              <% 
              for(Pet pet:pets){
             	
             		 if(String.valueOf(pet.getCategory()).equals("pets gifts")){
                     	
                 	%>
             
         	<div class="feat_prod_box">
             
             	<div class="prod_img"><a href="details.jsp"><img src="<%=pet.getPhoto() %>" alt="" title="" border="0" style="width:125px;height:115px"/></a></div>
                 
                 <div class="prod_det_box">
                 <span class="special_icon"><img src="images/special_icon.gif" alt="" title="" /></span>
                 	<div class="box_top"></div>
                     <div class="box_center">
                     <div class="prod_title"><%=pet.getName() %></div>
                     <p class="details"><%=pet.getDescription() %></p>
                     <a href="ServletPrincipale?Id=<%=pet.getId() %>" class="more">- more details -</a>
                     <div class="clear"></div>
                     </div>
                     
                     <div class="box_bottom"></div>
                 </div>    
             <div class="clear"></div>
             </div> 
                   
             <%}} }%>
               <!--        <div class="pagination">
            <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>…<a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a>
            </div>  -->  
                     
            
        <div class="clear"></div>
        </div><!--end of left content-->
        
         <jsp:include page="rightContent.jsp"/>
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
      <jsp:include page="footer.jsp"/>  
    

</div>

</body>
</html>