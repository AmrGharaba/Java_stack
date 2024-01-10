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
<title>New Ninja</title>
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
	<h1>New Ninja</h1>

	<form:form action="/ninjas/new" method="post" modelAttribute="ninja">


		<div class="row g-3 align-items-center">
			<form:label class="form-label" for="firstName" path="firstName">Dojo name</form:label>
			<form:select path="dojo">
				<c:forEach var="dojo" items="${dojos}">
					<form:option value="${dojo.id}" path="dojo">
						<!--- This is what shows to the user as the option --->
						<c:out value="${dojo.name}" />
					</form:option>
				</c:forEach>
			</form:select>
		</div>






		<div class="row g-3 align-items-center">
			<div class="col-auto">
				<form:label class="form-label" for="firstName" path="firstName">First Name</form:label>
			</div>
			<div class="col-auto">
				<form:input class="form-control" id="firstName" path="firstName" />
			</div>
			<div class="col-auto">
				<form:errors class="form-text" for="firstName" path="firstName" />
			</div>
		</div>

		<div class="row g-3 align-items-center">
			<div class="col-auto">
				<form:label class="form-label" for="lastName" path="lastName">Last Name</form:label>
			</div>

			<div class="col-auto">
				<form:input class="form-control" id="lastName" path="lastName" />
			</div>
			<div class="col-auto">
				<form:errors class="form-text" for="lastName" path="lastName" />
			</div>
		</div>

		<div class="row g-3 align-items-center">
			<div class="col-auto">
				<form:label class="form-label" for="age" path="age">Age</form:label>
			</div>

			<div class="col-auto">
				<form:input class="form-control" id="age" path="age" />
			</div>
			<div class="col-auto">
				<form:errors class="form-text" for="age" path="age" />
			</div>
		</div>


		<input class="btn btn-primary" type="submit" value="Submit" />
	</form:form>


</body>
</html>