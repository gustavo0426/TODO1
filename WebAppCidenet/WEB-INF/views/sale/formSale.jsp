<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

		<!-- Marketing messaging -->
		<div class="container marketing">

			<div class="page-header">
				<h2>IMAGEN</h2>
			</div>
			<div class="row">
				<div class="col-sm-3">
					<p class="text-center">
						<img class="img-rounded"
							src="${urlResource}/images/${product.file}"
							alt="Generic placeholder image" width="155" height="220">
					</p>
				</div>
				<div class="col-sm-9">
					<form:form action="${urlSave}" method="post" modelAttribute="product">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">DETALLES DEL PRODUCTO</h3>
							</div>

							<div class="panel-body">
								<form:hidden path="file"/>
								<form:hidden path="stock"/>
								<div class="row">
									<div class="col-sm-3">
										<div class="form-group">
											<label for="name">Name</label>
											<form:hidden path="id" />
											<form:hidden path="name"/>
											<form:input type="text" class="form-control" path="name" id="name" disabled="true" />
										</div>
									</div>
									<div class="col-sm-3">
										<div class="form-group">
											<label for="price">Precio</label>
											<form:hidden path="price"/>
											<form:input type="text" class="form-control" path="price" id="price" disabled="true" />
										</div>
									</div>
									<div class="col-sm-3">
										<div class="form-group">
											<label for="stock">Cantidad</label>
												<select name="amount" class="form-control">
													<c:forEach items="${listStock}" var="stock">
														<option value="${stock}" >${stock}</option>
													</c:forEach>
												</select>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="text-center">
    						<button type="submit" class="btn btn-danger btn-primary">Comprar</button>
						</div>
						
					</form:form>
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
