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
<h1>Burger Tracker</h1>

<table class="table">
    <thead>
      <tr>
      <th scope="col">ID</th>
        <th scope="col">Burger Name</th>
        <th scope="col">Restaurant Name</th>
        <th scope="col">Notes</th>
        <th scope="col">Rating</th>
        <th scope="col">Action</th>
  
      </tr>
    </thead>
    
    <c:forEach var="burger" items="${burgers}">
    <tr>
    	  <td>${burger.id}</td>
          <td>${burger.burgerName}</a></td>
          
          <td>${burger.restaurantName}</td>
          <td>${burger.notes}</td>
          <td>${burger.rating}</td>
          <td><a href="/burgers/${burger.id}/edit">Edit</a></td>
          </tr>
      </c:forEach>

  </table>
  
  <h1>Add a Burger</h1>
  <form:form action="/" method="post" modelAttribute="burger">
    <div class="row g-3 align-items-center">
    <div class="col-auto">
        <form:label class="form-label" for="burgerName"  path="burgerName">Burger Name</form:label>
        </div>
        
        <div class="col-auto">
        <form:input class="form-control" id="burgerName" path="burgerName"/>
        </div>
        <div class="col-auto">
        <form:errors class="form-text" for="burgerName" path="burgerName"/>
        </div>
    </div>
    
    <div class="row g-3 align-items-center">
    <div class="col-auto">
        <form:label class="form-label" for="restaurantName"  path="restaurantName">Restaurant Name</form:label>
        </div>
        
        <div class="col-auto">
        <form:input class="form-control" id="restaurantName" path="restaurantName"/>
        </div>
        <div class="col-auto">
        <form:errors class="form-text" for="restaurantName" path="restaurantName"/>
        </div>
    </div>
    
    <div class="row g-3 align-items-center">
    <div class="col-auto">
        <form:label class="form-label" for="notes"  path="notes">Notes</form:label>
        </div>
        
        <div class="col-auto">
        <form:input class="form-control" id="notes" path="notes"/>
        </div>
        <div class="col-auto">
        <form:errors class="form-text" for="notes" path="notes"/>
        </div>
    </div>
    
     <div class="row g-3 align-items-center">
    <div class="col-auto">
        <form:label class="form-label" for="rating"  path="rating">Rating</form:label>
        </div>
        
        <div class="col-auto">
        <form:input class="form-control" id="rating" path="rating"/>
        </div>
        <div class="col-auto">
        <form:errors class="form-text" for="rating" path="rating"/>
        </div>
    </div>
   
    <input class="btn btn-primary" type="submit" value="Submit"/>
</form:form>  



  </div>

</body>
</html>