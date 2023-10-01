<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.ArrayList" %>
     <%@ page import="java.util.List" %>
      <%@ page import="com.octest.servlets.Pet" %>
       <%@ page import="com.octest.servlets.PetDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Pet Shop</title>
<link rel="stylesheet" type="text/css" href="style.css" />
	<link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />
	
	<script src="js/prototype.js" type="text/javascript"></script>
	<script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
	<script src="js/lightbox.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/java.js"></script>
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
        	<div class="crumb_nav">
            <a href="index.jsp">home</a> <!-- &gt;&gt; product name -->
            </div>
            
            <%
           Pet pet=new Pet();
            if(!String.valueOf(request.getAttribute("pet")).equals("null")){
              pet =(Pet)request.getAttribute("pet");
              System.out.println(pet.getName());
              %>
              
                                
    
    <%  //if(request.getParameter("id") != null)
    int id = pet.getId();
   pet = (new PetDao()).findByID(id);
   
   if(pet == null){
       pet = new Pet(0, "", "","", 0.0F, "",0.0F,null,"");} %>
 
        	<div class="feat_prod_box_details">
            
            	<div class="prod_img"><a href="details.jsp"><img src="<%=pet.getPhoto() %>" alt="" title="" border="0" style="width:140px;height:120px"/></a>
                <br /><br />
                <a href="<%=pet.getPhoto() %>" rel="lightbox"><img src="images/zoom.gif" alt="" title="" border="0" /></a>
                </div>
                
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title" style="font-size:16px;color:#4E6C4E;"><%=pet.getName() %></div>
                    <p class="details"><%=pet.getDescription() %> </p>
                    <div class="price"><strong>PRICE:</strong> <span class="red" style="color:#4E6C4E;"><%=pet.getPrix() %> $</span></div>
                    <div class="price"><strong>COLORS:<span class="red" style="color:#4E6C4E;"><%=pet.getCouleur() %></span></strong> 
                    </div>
                    

                    <a href="ServletBuy?op=add&sender=details.jsp&id=<%= id %>" class="more"><img src="images/order_now.gif" alt=""  border="0" /></a>
                    <div class="clear"></div>
                    </div>
                    
                    

                    
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>	
            <%} 
            
            
            
            else{ List<Pet>  pets= new ArrayList<Pet>();
            
            pets=(List) application.getAttribute("pets");
                      
                       for(Pet pet2:pets){
              
              %>
             
             
            <%  //if(request.getParameter("id") != null)
    int id = pet.getId();
   pet = (new PetDao()).findByID(id);
   
   if(pet == null){
       pet = new Pet(0, "", "","", 0.0F, "",0.0F,null,"");} %>
        	<div class="feat_prod_box_details">
            
            	<div class="prod_img"><a href="details.jsp"><img src="<%=pet2.getPhoto() %>" alt="" title="" border="0" style="width:125px;height:110px" /></a>
                <br /><br />
                <a href="<%=pet2.getPhoto() %>" rel="lightbox"><img src="images/zoom.gif" alt="" title="" border="0" /></a>
                </div>
                
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title" style="font-size:16px;color:#4E6C4E;"><%=pet2.getName() %></div>
                    <p class="details"><%=pet2.getDescription() %> </p>
                    <div class="price"><strong>PRICE:</strong> <span class="red" style="color:#4E6C4E;"><%=pet2.getPrix() %> $</span></div>
                    <div class="price"><strong>COLORS:<span class="red" style="color:#4E6C4E;"><%=pet2.getCouleur() %></span></strong> 
                    </div>
                    <a href="ServletBuy?op=add&sender=details.jsp&id=<%= id %>" class="more"><img src="images/order_now.gif" alt=""  border="0" /></a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>	
            <%} }%>
            
              
        <!--   <div id="demo" class="demolayout">

                <ul id="demo-nav" class="demolayout">
                <li><a class="active" href="#tab1">More details</a></li>
                <li><a class="" href="#tab2">Related books</a></li>
                </ul>
    
            <div class="tabs-container">
            
                    <div style="display: block;" class="tab" id="tab1">
                                        <p class="more_details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.
                                        </p>
                            <ul class="list">
                            <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                            <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                            <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>
                            <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></li>                                          
                            </ul>
                                         <p class="more_details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.
                                        </p>                           
                    </div>	
                    
                            <div style="display: none;" class="tab" id="tab2">
                    <div class="new_prod_box">
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <a href="details.jsp"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <a href="details.jsp"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>                    
                    
                    <div class="new_prod_box">
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <a href="details.jsp"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>    

                    <div class="new_prod_box">
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <a href="details.jsp"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <a href="details.jsp"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>                    
                    
                    <div class="new_prod_box">
                        <a href="details.jsp">product name</a>
                        <div class="new_prod_bg">
                        <a href="details.jsp"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>  


                   
                    <div class="clear"></div>
                            </div>	
            
            </div>


			</div>-->
            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <jsp:include page="rightContent.jsp"/>
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
<jsp:include page="footer.jsp"/>      

</div>

</body>
<script type="text/javascript">

var tabber1 = new Yetii({
id: 'demo'
});

</script>
</html>