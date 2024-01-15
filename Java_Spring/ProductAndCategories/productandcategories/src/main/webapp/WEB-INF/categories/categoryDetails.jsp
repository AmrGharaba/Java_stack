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
<title>CategoryDetails</title>
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
		<h1>${category.name}</h1>
	</div>

	<div style="padding: 5% 20%" class="mt-2 d-flex justify-content-center">
		<div class="col-4">
			<table class="table">
				<thead>
					<tr>
						<th>Categories</th>
					</tr>
				</thead>
				<tbody>
				<c:if test="${!products.isEmpty()}">
					<c:forEach var="product" items="${products}">
						<tr>
							<td>${product.name}</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
			
			<form:form action="/categories/${category.id}/assign" method="post" modelAttribute="product">
				<form:select path="id" class="form-select">
				<c:forEach var="product" items="${unAssignedProducts}" >
					<form:option  value="${product.id}">${product.name}</form:option>
					</c:forEach>
				</form:select>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>



		</div>
	</div>

</body>
</html>