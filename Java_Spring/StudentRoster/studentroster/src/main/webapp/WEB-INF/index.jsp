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
<title>Home page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>


</head>

<body>
	<div style="text-align: center;">

		<h1>Dorms</h1>
		<div class="d-flex justify-content-center">
			<div class="col-4 mt-5">
				<a href="/dorms/new" class="btn btn-primary me-3">Add Dorms</a>
				<a href="/students/new" class="btn btn-primary">Add Students</a>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Dorm</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="dorm" items="${dorms}">
						<tr>
						    
							<td>${dorm.dormName}</td>
							<td><a href="/dorms/${dorm.id}" class="btn btn-primary">See Students</a></td>
							

						</tr>
						</c:forEach>
					</tbody>
				</table>


			</div>
		</div>
	</div>

</body>
</html>