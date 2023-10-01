<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <form action="AddPet" method="post">
          <div class="containner">
            <div>
              <p class="normal">
                <input type="text" name="name" placeholder="name" />
              </p>
              <p class="normal">
                <input type="text" name="image" placeholder="image" />
              </p>
              <p class="normal">
                <input type="text" name="color" placeholder="color" />
              </p>
              <p class="normal">
                <textarea
                  name="description"
                  id="description"
                  placeholder="description"
                ></textarea>
              </p>
            </div>
            <div>
              <p class="normal">
                <input type="number" name="price" placeholder="price" />
              </p>
              <p class="normal">
                <input type="number" name="promotion" placeholder="promotion" />
              </p>
              <p class="normal">
              <select name="categorie">
                <option value="normal">normal</option>
                <option value="special">special</option>
                <option value="accessory">accessory</option>
                <option value="food">food</option>
              </select>
              </p>
            </div>
          </div>
          <div class="send"><input type="submit" value="send" /></div>
        </form>
      </div>
    </div>
</body>
</html>