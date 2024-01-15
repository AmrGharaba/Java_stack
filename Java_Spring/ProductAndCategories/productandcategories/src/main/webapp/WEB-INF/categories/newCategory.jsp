<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>




<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>New Category</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


</head>
<body>
	<div class="mt-2 d-flex justify-content-center">
		<h1>Create new category</h1>
	</div>
	<div class="mt-2 d-flex justify-content-center">
	
				<form:form action="/categories/new" method="post" modelAttribute="category">

				<div class="mb-3">
					<form:label class="form-label" for="name" path="name">Name : </form:label>
					<form:input class="form-control" id="name" path="name" />
					<form:errors class="form-text" for="name" path="name" />
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>
			</div>

</body>
</html>