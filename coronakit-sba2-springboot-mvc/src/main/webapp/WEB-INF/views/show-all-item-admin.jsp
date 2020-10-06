<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CMS</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>	
	<section class="container-fluid p-4">
	<jsp:include page="${pageContext.request.contextPath}/header" />
	<c:choose>
		<c:when test="${products == null || products.isEmpty() }">
			<p class="well well-info">No Products Found Try <a href="${pageContext.request.contextPath}/admin/product-entry">adding</a> one</p>
		</c:when>
		<c:otherwise>
			<table class="table table-striped table-hover table-border">
				<tr>
					<th>Product#</th>
					<th>Product Name Name</th>
					<th>Cost</th>
					<th>Product Desc</th>
					<th>Action</th>
				</tr>
				<c:forEach items="${products }" var="product">
					<tr>
						<td>${product.id }</td>
						<td>${product.productName }</td>
						<td>${product.cost }</td>
						<td>${product.productDescription }</td>
						<td>
							<a class="btn btn-sm btn-danger" href="${pageContext.request.contextPath}/admin/product-delete?pid=${product.id }">DELETE</a>
									
						</td>
					</tr>
				</c:forEach>
			</table>
			<a class="btn btn-sm btn-danger" href="${pageContext.request.contextPath}/admin/product-entry">ADD Product</a>
			<a class="btn btn-sm btn-danger" href="${pageContext.request.contextPath}/custom-login">LOGOUT</a>
		</c:otherwise>
	</c:choose>
	</section>
</body>
</html>