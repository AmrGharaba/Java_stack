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
<title>Login And Registration</title>
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
	<div class="row mt-3">
		<div class="col mb-2 d-flex justify-content-center">
			<h1>Book Club</h1>
		</div>
		<div class="row mb-3">
			<div class="col mb-2 d-flex justify-content-center">
				<p>A place for friends to share thoughts on books</p>
			</div>
		</div>
	</div>
	<div class="mt-2 d-flex justify-content-center">
		<div class="col-4  ">
			<h1 class="mb-3">Register</h1>
			<form:form action="/register" method="post" modelAttribute="newUser">

				<div class="mb-3">
					<form:label class="form-label" for="userName" path="userName">User Name</form:label>
					<form:input class="form-control" id="userName" path="userName" />
					<form:errors class="form-text" for="userName" path="userName" />
				</div>

				<div class="mb-3">
					<form:label class="form-label" for="email" path="email">Email</form:label>
					<form:input class="form-control" id="email" path="email" />
					<form:errors class="form-text" for="email" path="email" />
				</div>

				<div class="mb-3">
					<form:label class="form-label" for="password" path="password">Password</form:label>
					<form:input class="form-control" id="password" path="password"
						type="password" />
					<form:errors class="form-text" for="password" path="password" />
				</div>

				<div class="mb-3">
					<form:label class="form-label" for="confirm" path="confirm">Confirm Password</form:label>
					<form:input class="form-control" id="confirm" path="confirm"
						type="password" />
					<form:errors class="form-text" for="confirm" path="confirm" />
				</div>

				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>
		</div>
		<div class="col-4 ms-5">
			<h1 class="mb-3">Login</h1>
			<form:form action="/login" method="post" modelAttribute="user">

				<div class="mb-3">
					<form:label class="form-label" for="email" path="email">Email</form:label>
					<form:input class="form-control" id="email" path="email" />
					<form:errors class="form-text" for="email" path="email" />
				</div>

				<div class="mb-3">
					<form:label class="form-label" for="password" path="password">Password</form:label>
					<form:input class="form-control" id="password" path="password"
						type="password" />
					<form:errors class="form-text" for="password" path="password" />
				</div>

				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>


		</div>
	</div>


</body>

</html>