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
            <li class="selected"><a href="category.jsp">pets</a></li>
            <li><a href="specials.jsp">specials pets</a></li>
            <li><a href="myaccount.jsp">my accout</a></li>
           
            <li><a href="details.jsp">buy</a></li>
            <li><a href="contact.jsp">contact</a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
        	<div class="crumb_nav">
            <a href="index.jsp">home</a> 
            </div>
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Category books</div>
           
           <div class="new_products">
           <% 
         List<Pet>  pets= new ArrayList<Pet>();
         
         pets=(List) application.getAttribute("pets");
                   
                    for(Pet pet:pets){
                    	 if(pet.verificierNew()){
                	%>
                	 <div class="new_prod_box">
                        <a href="details.jsp"><%=pet.getName() %></a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                        <a href="details.jsp"><img src="<%=pet.getPhoto() %>" alt="" title="" class="thumb" border="0" style="width:131px;height:120px;"/></a>
                        </div>           
                    </div>       
                   
          <% } else if(pet.getPromotion()!=0){%> 
         
                              <div class="new_prod_box">
                        <a href="details.jsp"><%=pet.getName() %></a>
                        <div class="new_prod_bg">
                       <!--  <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>-->
                       
                         <a href="details.jsp" style="background-color:#990000;color:#fff;padding:5px;"> promotion: <%=pet.getPromotion() %>%</a>
                        
                        <a href="details.jsp"><img src="<%=pet.getPhoto() %>" alt="" title="" class="thumb" border="0" style="width:131px;height:97px;" /></a>
                        </div>           
                    </div>

                     <%} 
                     else{%>
                     
                    <div class="new_prod_box">
                        <a href="details.jsp"><%=pet.getName() %></a>
                        <div class="new_prod_bg">
                        <a href="details.jsp"><img src="<%=pet.getPhoto() %>" alt="" title="" class="thumb" border="0" style="width:131px;height:120px;"/></a>
                        </div>           
                    </div>
                     <%} }%>
                                
                    
 <!--  <div class="pagination">
            <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>…<a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a>
            </div>  -->
            
            </div> 
          
            
        <div class="clear"></div>
        </div><!--end of left content-->
       <jsp:include page="rightContent.jsp"/>
       <div class="clear"></div>
       </div><!--end of center content-->
      <jsp:include page="footer.jsp"/>

</body>
</html>