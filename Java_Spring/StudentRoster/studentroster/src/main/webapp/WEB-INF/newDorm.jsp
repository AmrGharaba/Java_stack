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
<title>New Dorm</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
></script>


</head>

<body>
	<div style="margin: 0 auto; padding: 10px 5%">
	<a href="/dorms">Dash Board</a>
	<div style="text-align: center;">

		<h1>Dorms</h1>

		<div class="d-flex justify-content-center">
			<div class="col-4 mt-5">


				<%-- 				<form:form action="/register" method="post" modelAttribute="newUser">

					<div class="mb-3">
						<form:label class="form-label" for="userName" path="userName">New Dorm</form:label>
						<form:input class="form-control" id="userName" path="userName" />
						<form:errors class="form-text" for="userName" path="userName" />
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form:form> --%>

				<form:form action="/dorms/new" method="post" modelAttribute="newDorm">

					<div class="mb-3">
						<form:label path="dormName"  class="form-label" for="name">New Dorm</form:label>
						<form:input path="dormName" class="form-control" id="name"/>
						<form:errors path="dormName" class="form-text" for="name"></form:errors>

					</div>
					<button type="submit" class="btn btn-primary">Add</button>
				</form:form>




			</div>
		</div>
	</div>
	</div>

</body>
</html>