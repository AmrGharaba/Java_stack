<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books</title>
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
        <th scope="col">Title</th>
        <th scope="col">Description</th>
        <th scope="col">Language</th>
        <th scope="col">Number of pages</th>
  
      </tr>
    </thead>
    <tbody>
    <c:forEach var="book" items="${books}">
    <tr>
    	  <td>${book.id}</td>
          <td><a href="/books/${book.id}" >${book.title}</a></td>
          
          <td>${book.description}</td>
          <td>${book.language}</td>
          <td>${book.numberOfPages}</td>
          </tr>
      </c:forEach>
  
    </tbody>
  </table>



  </div>
</body>
</html>