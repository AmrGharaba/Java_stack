<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>



    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Dojo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</head>
<body>
<h1>New Dojo</h1>

  <form:form action="/dojos/new" method="post" modelAttribute="dojo">
    <div class="row g-3 align-items-center">
    <div class="col-auto">
        <form:label class="form-label" for="name"  path="name">Dojo Name</form:label>
        </div>
        
        <div class="col-auto">
        <form:input class="form-control" id="name" path="name"/>
        </div>
        <div class="col-auto">
        <form:errors class="form-text" for="name" path="name"/>
        </div>
    </div>
    
   
    <input class="btn btn-primary" type="submit" value="Submit"/>
</form:form>  


</body>
</html>