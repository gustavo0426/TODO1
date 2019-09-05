<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Detalles de la Factura</title>
<spring:url value="/RESOURCES" var="urlResource"></spring:url>
<spring:url value="/sale/save" var="urlSave"></spring:url>
<spring:url value="/" var="urlRoot"></spring:url>
<link href="${urlResource}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${urlResource}/bootstrap/css/theme.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="../include/menu.jsp"></jsp:include>
	<div class="container theme-showcase" role="main">
		<div class="container marketing">

			<div class="panel panel-default">
				<div class="panel-heading">

					<c:if test="${mensaje != null}">
						<div class="alert alert-success" role="alert">${mensaje}</div>
					</c:if>
					<h1 class="panel-title">
						<span class="label label-success">Factura</span>
					</h1>
				</div>
				<div class="panel-body">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id Factura</th>
								<th>Cliente</th>
								<th>Fecha</th>
								<th>Producto</th>
								<th>Precio Unitario</th>
								<th>Cantidad</th>
								<th>Pago Total</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${sale.id}</td>
								<td>${sale.customer.name}</td>
								<td><fmt:formatDate value="${sale.date}"
										pattern="dd-MM-yyyy" /></td>
								<td>${product.name}</td>
								<td>$${product.price}</td>
								<td>${amount}</td>
								<td>$${sale.payment}</td>
							</tr>
						</tbody>
					</table>
					<div class="text-center">
    					<a href="${urlRoot}" class="btn btn-success btn-primary" role="button" title="Nuevo Producto" >Aceptar</a><br><br>
					</div>
					
				</div>
			</div>
		</div>

		<hr class="featurette-divider">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${urlResource}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
