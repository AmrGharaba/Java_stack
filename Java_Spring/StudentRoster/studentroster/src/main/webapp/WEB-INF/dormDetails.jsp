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
<title>Dorm Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
	<h1>${dorm.dormName}Students</h1>
	<a href="/dorms">Dash Board</a>
	<table class="table">
		<thead>
			<tr>
				<th>Student Name</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${dorm.students}">
				<tr>
					<td>${student.firstName}${student.lastName}</td>
					<td><a href="/students/${dorm.id}/${student.id}/remove">Remove</a></td>
				</tr>
			</c:forEach>



			<form:form action="/dorms/${dorm.id}/assign" method="post" modelAttribute="studentToAssign">

				<div class="mb-3">
					<label class="form-label" for=studentToAssign>Select Student</label>
					<form:select path="id" id="studentToAssign">
						<c:forEach var="student" items="${otherStudents}">
							<form:option value="${student.id}">${student.firstName} ${student.lastName}</form:option>
						</c:forEach>


					</form:select>
				</div>
				<button type="submit" class="btn btn-primary">Add</button>
			</form:form>


		</tbody>







	</table>


</body>
</html>