<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href = "/css/style.css">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>

<form action="/process" method="post">
  	
<label for="number" class="form-label">Pick any number from 5 to 25.</label>
<input type="number" name="number" id="number" class="form-control">

<label for="city" class="form-label mt-2">Enter the name of any city</label>
<input type="text" class="form-control" name="city" id="city">

<label for="name" class="form-label mt-2">Enter the name of any living person</label>
<input type="text" class="form-control" name="name" id="name">

<label for="hobby" class="form-label mt-2">Enter professional endeavor or hobby</label>
<input type="text" class="form-control" name="hobby" id="hobby">

<label for="thing" class="form-label mt-2">Enter the name of any living thing</label>
<input type="text" class="form-control" name="thing" id="thing">

<label for="message" class="form-label mt-2">Say something nice to someone</label>
<textarea class="form-control" name="message" placeholder="Leave a message here" id="message"></textarea>

<label for="submit" class="form-label mt-2">Send and show a friend</label>
<input type="submit" class="btn btn-primary" id="submit">

</form>

</body>
</html>