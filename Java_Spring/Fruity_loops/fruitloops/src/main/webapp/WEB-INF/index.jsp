<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fruit Store</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />

<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
<h1>Fruitt Store</h1>

<table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Price</th>

    </tr>
  </thead>
  <tbody>
  <c:forEach var="fruit" items="${fruits}">
        <p><c:out value="${fruit.getName}"></c:out></p>
        <p><c:out value="${fruit.getPrice}"></c:out></p>
    </c:forEach>

  </tbody>
</table>
</div>

</body>
</html>