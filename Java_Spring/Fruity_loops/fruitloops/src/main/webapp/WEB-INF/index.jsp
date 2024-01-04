<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fruit Store</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</head>
<body>
<div class="container">
<h1>Fruit Store</h1>

<table class="table">
    <thead>
      <tr>
        <th scope="col">Name</th>
        <th scope="col">Price</th>
  
      </tr>
    </thead>
    <tbody>
    <c:forEach var="fruit" items="${fruits}">
    <tr>
          <td><c:out value="${fruit.name}"></c:out></td>
          <td><c:out value="${fruit.price}"></c:out></td>
          </tr>
      </c:forEach>
  
    </tbody>
  </table>



  </div>
</body>
</html>