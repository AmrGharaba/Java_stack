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
<title>${book.title}Details</title>
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

	<h1>${book.title}</h1>



	<h2>${book.user.userName}read ${book.title} by ${book.author}</h2>

	<h2>Here are ${book.user.userName} thoughts :</h2>

	<p>${book.note}</p>

	<c:if test="${book.user.id.equals(user.id)}">

		<div class="mt-2 d-flex justify-content-center">
			<div class="col-auto  ">
				<form:form action="/books/${book.id}/edit" method="get">
					<button type="submit" class="btn btn-primary">Edit Book</button>
				</form:form>
			</div>
			<div class="col-auto ms-2  ">


				<form:form action="/books/${book.id}/delete" method="post">
					<input type="hidden" name="_method" value="delete">
					<button type="submit" class="btn btn-primary">Delete Book</button>
				</form:form>
			</div>
		</div>




	</c:if>

</body>
</html>