<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fruit Store</title>


</head>
<body>
<div class="container">
<h1>Fruit Store</h1>

<table>
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