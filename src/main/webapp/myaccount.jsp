<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
            <li><a href="specials.jsp">specials pets</a></li>
            <li class="selected"><a href="myaccount.jsp">my accout</a></li>
           
            <li><a href="details.jsp">buy</a></li>
            <li><a href="contact.jsp">contact</a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
         <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My account</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">
             Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
            </p>
            
              	<div class="contact_form">
                <div class="form_subtitle">login into your account</div>
                 <form name="register" method="post" action="Smyaccount">          
                    <div class="form_row">
                    <label class="contact"><strong>Username:</strong></label>
                    <input type="text" class="contact_input" required="required" name="username" id="username" onfocus="myfunction()"/>
                    </div>  


                    <div class="form_row">
                    <label class="contact" ><strong>Password:</strong></label>
                    <input type="password" class="contact_input" required="required" name="password" id="password" onfocus="myfunction()"/>
                    </div>                     

                    <div class="form_row">
                        <div class="terms">
                        <input type="checkbox" name="terms" />
                        Remember me
                        </div>
                    </div> 

                    
                    <div class="form_row">
                    <input type="submit" class="register" value="login" />
                    </div>   
                    <div>
                    <h4 id="resultat">
					<% String r=String.valueOf(request.getAttribute("resultat"));
					if(r.equals("null")){out.println("");}
					else{
					out.println(r);} %>
					</h4>
                    </div>
                  </form>     
                   
                </div> 
                 
                   <a href="register.jsp" class="title" id="sign">Create Account</a>
                
            
            </div>	
            
        <div class="clear"></div>
        </div><!--end of left content-->
        
         <jsp:include page="rightContent.jsp"/>
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
      <jsp:include page="footer.jsp"/>  
    

</div>

</body>
</html>