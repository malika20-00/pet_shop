<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.octest.servlets.LigneBuy"%>
<%@page import="com.octest.servlets.Buy"%>
<%@page import="com.octest.servlets.Pet" %>
<%@page import="com.octest.servlets.ConnectionPets" %>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
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
            <li><a href="myaccount.jsp">my accout</a></li>
            
            <li><a href="details.jsp">buy</a></li>
            <li><a href="contact.jsp">contact</a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My cart</div>
        
        	<div class="feat_prod_box_details">
<% 
int i = 0 ;
//Buy b = new Buy();

 Buy p = (Buy)request.getSession().getAttribute("buy");
  float sum=0;
for(LigneBuy lp : p.getLignesBuy())
{
    i++;
%> 
            <table class="cart_table">
            	<tr class="cart_title">
                	<td>Item pic</td>
                	<td>name</td>
                    <td>Unit price</td>
                    <td>Qty</td>
                    <td>Total</td>               
                </tr>
                
            	<tr>
                    <td><a href="details.jsp"><img src="<%= lp.getPet().getPhoto()%>" alt="" title="" border="0" class="cart_thumb"  style="width:125px;height:110px"/></a></td>
                	<td><%= lp.getPet().getName()%></td>
                    <td><%= lp.getPet().getPrix()%></td>
                    <td><a href="ServletBuy?op=add&sender=cart.jsp&id=<%= lp.getPet().getId() %>" title="plus-pro"><img src="images/plus1.PNG" alt="plus-pro" style="width:30px;height:30px"/></a>
                    <a href="ServletBuy?op=sous&sender=cart.jsp&id=<%= lp.getPet().getId() %>" title="minus-pro"><img src="images/moins1.PNG" alt="minus-pro" style="width:30px;height:30px"/></a></td>
                    <td><%= lp.getPet().getPrix()*lp.getQuantity() %></td>  
                    <% sum+=lp.getPet().getPrix()*lp.getQuantity(); %>         
                </tr>          

<%
}
%>


                <tr>
                <td colspan="4" class="cart_total"><span class="red">TOTAL SHIPPING:</span></td>
                <td> <%=sum%></td>                
                </tr>  
                
                <tr>
                <td colspan="4" class="cart_total"><span class="red">TOTAL:</span></td>
                <td> 325$</td>                
                </tr>                  
            
            </table>
            <a href="#" class="continue">&lt; continue</a>
            <a href="#" class="checkout">checkout &gt;</a>
            
            
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