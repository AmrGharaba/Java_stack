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
<title>New Student</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>


</head>

<body>
	<div style="margin: 0 auto; padding: 10px 5%">
		<a href="/dorms">Dash Board</a>
		<div style="text-align: center;">

			<h1>new Student</h1>

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

					<form:form action="/students/new" method="post" modelAttribute="newStudent">

						<div class="mb-3">
							<form:label class="form-label" for="firstName" path="firstName">First Name</form:label>
							<form:input path="firstName" class="form-control" id="firstName" />
							<form:errors path="firstName" for="firstName" class="form-text"></form:errors>
						</div>

						<div class="mb-3">
							<form:label class="form-label" for="lastName" path="lastName">Last Name</form:label>
							<form:input path="lastName" class="form-control" id="lastName" />
							<form:errors path="lastName" for="lastName" class="form-text"></form:errors>
						</div>


						<div class="mb-3">
							<label class="form-label" for="Dorm">Select Dorm</label>
							<form:select path="dorm" id="Dorm">
							<c:forEach var="onedorm" items="${dorms}">
								<form:option path="dorm" value="${onedorm.id}">${onedorm.dormName}</form:option>
							</c:forEach>
								

							</form:select>
						</div>
						<div class="mb-3">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>

					</form:form>




				</div>
			</div>
		</div>
	</div>

</body>
</html>