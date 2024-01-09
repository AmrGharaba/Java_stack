<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>



    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Travel</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</head>
<body>

<div class="container">
<h1>Save Travel</h1>

<table class="table">
    <thead>
      <tr>
      <th scope="col">ID</th>
        <th scope="col">Expense</th>
        <th scope="col">Vendor</th>
        <th scope="col">Amount</th>
        <th scope="col">Actions</th>
        <th scope="col"></th>
  
      </tr>
    </thead>
    
    <c:forEach var="travel" items="${travels}">
    <tr>
    	  <td>${travel.id}</td>
          <td><a href = "/travels/${travel.id}/show" >${travel.expense}</a></td>
          
          <td>${travel.vendor}</td>
          <td>$${travel.amount}</td>
          <td><a href="/travels/${travel.id}/edit">Edit</a></td>
          <td>
			    <form:form action="/travels/${travel.id}/delete" method="post" modelAttribute="book">
			    <input type="hidden" name="_method" value="delete">
			    <input class="btn btn-primary" type="submit" value="Delete"/>
			    </form:form>
		</td>
          </tr>
      </c:forEach>

  </table>
  
  <h1>Add an expense</h1>
  <form:form action="/" method="post" modelAttribute="travel">
    <div class="row g-3 align-items-center">
    <div class="col-auto">
        <form:label class="form-label" for="expense"  path="expense">Expense Name</form:label>
        </div>
        
        <div class="col-auto">
        <form:input class="form-control" id="expense" path="expense"/>
        </div>
        <div class="col-auto">
        <form:errors class="form-text" for="expense" path="expense"/>
        </div>
    </div>
    
    <div class="row g-3 align-items-center">
    <div class="col-auto">
        <form:label class="form-label" for="vendor"  path="vendor">Vendor</form:label>
        </div>
        
        <div class="col-auto">
        <form:input class="form-control" id="vendor" path="vendor"/>
        </div>
        <div class="col-auto">
        <form:errors class="form-text" for="vendor" path="vendor"/>
        </div>
    </div>
         <div class="row g-3 align-items-center">
    <div class="col-auto">
        <form:label class="form-label" for="amount"  path="amount">Amount</form:label>
        </div>
        
        <div class="col-auto">
        <form:input class="form-control" id="amount" path="amount"/>
        </div>
        <div class="col-auto">
        <form:errors class="form-text" for="amount" path="amount"/>
        </div>
    </div>
    
    <div class="row g-3 align-items-center">
    <div class="col-auto">
        <form:label class="form-label" for="description"  path="description">Description</form:label>
        </div>
        
        <div class="col-auto">
        <form:input class="form-control" id="description" path="description"/>
        </div>
        <div class="col-auto">
        <form:errors class="form-text" for="description" path="description"/>
        </div>
    </div>
    

   
    <input class="btn btn-primary" type="submit" value="Submit"/>
</form:form>  



  </div>

</body>
</html>