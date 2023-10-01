<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
     <%@ page import="java.util.List" %>
      <%@ page import="com.octest.servlets.Pet" %>
       <%@ page import="com.octest.servlets.ConnectionPets" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
<div class="right_content">
        	<div class="languages_box">
            <span class="red">Languages:</span>
            <a href="#" class="selected"><img src="images/gb.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/fr.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="images/de.gif" alt="" title="" border="0" /></a>
            </div>
                <div class="currency">
                <span class="red">Currency: </span>
                <a href="#">GBP</a>
                <a href="#">EUR</a>
                <a href="#" class="selected">USD</a>
                </div>
                
                
              <div class="cart">
                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart</div>
                  <div class="home_cart_content">
                  3 x items | <span class="red">TOTAL:<span class="red">100$</span></span>
                  </div>
                  <a href="cart.jsp" class="view_cart">view cart</a>
              
              </div>
                       
            	
        
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Shop</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />
             Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
             </p>
             
             </div>
             
             
             	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories</div> 
                
                <ul class="list">
                <li><a href="ServletPrincipale?category=accessoire">accessories</a></li>
                <li><a href="ServletPrincipale?category=pets gifts">pets gifts</a></li>
                <li><a href="ServletPrincipale?category=hollidays gifts">hollidays gifts</a></li>
                <li><a href="specials.jsp">specials pets</a></li>
                
                                                        
                </ul>
                
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions</div> 
                    
                 <%List<Pet>  pets= new ArrayList<Pet>();
                 
                 pets=(List) application.getAttribute("pets");
                 for(Pet pet:pets){
                	 if(pet.getPromotion()!=0){
                 
                	%>
                    <div class="new_prod_box">
                        <a href="details.jsp" style="font-size:13px;color:#000;"><%=pet.getName() %></a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/prom4.png" alt="" title=""  style="width:80px;height:20px;"/></span>
                        <a href="details.jsp"><img src="<%=pet.getPhoto() %>" alt="" title="" class="thumb" border="0" style="width:131px;height:120px;"/></a>
                        </div>           
                    </div>   
                      <% }}%>
                       
             
             </div>
             
             <div class="right_box">
             
              <!--	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories</div> 
                
                <ul class="list">
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>                                              
                </ul>  -->
                
            <!--  	<div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>Partners</div> 
                
                <ul class="list">
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">pets gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>                              
                </ul>   -->    
                <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>New pets</div> 
                    
                 <%
                 
                
                 for(Pet pet:pets){
                	 if(pet.verificierNew()){
                 
                	%>
                   <div class="new_prod_box">
                        <a href="details.jsp" style="font-size:13px;color:#000;"><%=pet.getName() %></a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                        <a href="details.jsp"><img src="<%=pet.getPhoto() %>" alt="" title="" class="thumb" border="0" style="width:131px;height:120px;" /></a>
                        </div>           
                    </div>
                      <% }}%>
                
             
             </div>         
             
        
        </div><!--end of right content-->
        
        
        </div>
</body>
</html>