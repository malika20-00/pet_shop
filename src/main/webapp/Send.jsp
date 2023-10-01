<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <h1>Enregistrement de vos coordonées</h1>
      <form action="UserServlet" method="post">
       <div>
       <label for="Name">Name:</label>
       <input type="text" name="Name">
     </div> <br/>
     <div>
       <label for="Email">Email:</label>
       <input type="text" name="Email">
     </div>
      <br/>
     <div>
       <label for="Phone">Phone:</label>
       <input type="text" name="Phone">
     </div>
     <br/>
        <br/>
     <div>
       <label for="Company">Company:</label>
       <input type="text" name="Company">
     </div>
     <br/>
         <br/>
     <div>
       <label for="Message">Message:</label>
       <textarea rows="5" cols="20" name="Message"></textarea>
     </div>
     <br/>
          <INPUT type=submit value=Envoyer>
      </form>
</body>
</html>