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
		<h1>Home Page</h1>
	</div>
	<div class="mt-2 d-flex justify-content-center">
		<a class="btn btn-primary me-2" href="products/new">New Product</a> <a
			class="btn btn-primary" href="categories/new">New Category</a>
	</div>

	<div style="padding: 5% 20%" class="mt-2 d-flex justify-content-center">
		<table class="table">
			<thead>
				<tr>
					<th>Products</th>
					<th>Categories</th>
				</tr>
			</thead>
			<tbody>

				<tr>
					<td>
					<ul class="list-group">
					<c:forEach var="product" items="${products}">

							<li class="list-group-item"><a href="products/${product.id}">${product.name}</a></li>
							</c:forEach>
							</ul>
							</td>

						
					<td>
					<ul class="list-group">
					<c:forEach var="category" items="${categories}">

							<li class="list-group-item"><a href = "categories/${category.id}">${category.name}</a></li>
							</c:forEach>
							</ul>
							</td>


				</tr>


			</tbody>




		</table>
		</div>
</body>
</html>