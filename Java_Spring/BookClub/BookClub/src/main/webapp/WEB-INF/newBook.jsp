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
<title>New Book</title>
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
		<div class="col-4  ">
			<h1 class="mb-3">Add Book</h1>
			<form:form action="/books/createBook" method="post" modelAttribute="book">

				<div class="mb-3">
					<form:label class="form-label" for="title" path="title">Book Title</form:label>
					<form:input class="form-control" id="title" path="title" />
					<form:errors class="form-text" for="title" path="title" />
				</div>
				<div class="mb-3">
					<form:label class="form-label" for="author" path="author">Book Author</form:label>
					<form:input class="form-control" id="author" path="author" />
					<form:errors class="form-text" for="author" path="author" />
				</div>
				<div class="mb-3">
					<form:label class="form-label" for="note" path="note">Your Thoughts</form:label>
					<form:input class="form-control" id="note" path="note" />
					<form:errors class="form-text" for="note" path="note" />
				</div>



				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>



		</div>
	</div>

</body>
</html>