<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>



    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Burger Tracker</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</head>
<body>

<div class="container">
<h1>All Books</h1>

<table class="table">
    <thead>
      <tr>
      <th scope="col">ID</th>
        <th scope="col">Burger Name</th>
        <th scope="col">Restaurant Name</th>
        <th scope="col">Notes</th>
        <th scope="col">Rating</th>
  
      </tr>
    </thead>
    
    <c:forEach var="burger" items="${burgers}">
    <tr>
    	  <td>${burger.id}</td>
          <td>${burger.burgerName}</a></td>
          
          <td>${burger.restaurantName}</td>
          <td>${burger.notes}</td>
          <td>${burger.rating}</td>
          </tr>
      </c:forEach>

  </table>
  
  
  <form:form action="/" method="post" modelAttribute="burger">
    <p>
        <form:label path="burgerName">Burger Name</form:label>
        <form:errors path="burgerName"/>
        <form:input path="burgerName"/>
    </p>
    <p>
        <form:label path="restaurantName">Restaurant Name</form:label>
        <form:errors path="restaurantName"/>
        <form:textarea path="restaurantName"/>
    </p>
    <p>
        <form:label path="notes">Notes</form:label>
        <form:errors path="notes"/>
        <form:input path="notes"/>
    </p>
    <p>
        <form:label path="rating">Rating</form:label>
        <form:errors path="rating"/>     
        <form:input type="number" path="rating"/>
    </p>    
    <input type="submit" value="Submit"/>
</form:form>  



  </div>

</body>
</html>