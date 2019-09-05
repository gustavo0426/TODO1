<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<meta name="description" content="">
	<meta name="author" content="">
	<title>ERROR | TODO1</title>
	<spring:url value="/RESOURCES" var="urlResource" />
		
	<link href="${urlResource}/bootstrap/css/bootstrap.min.css" rel="stylesheet">	
   <link href="${urlResource}/bootstrap/css/theme.css" rel="stylesheet">
	
	</head>

<body>

	<jsp:include page="../include/menu.jsp"></jsp:include>
	
	<div class="container theme-showcase" role="main">

		<div class="panel panel-danger">
			<div class="panel-heading">
				<h3 class="panel-title">Error 403.</h3>
			</div>
			<div class="panel-body">
				<img src="${urlResource}/images/error.png" width="48" height="48" class="center">
				<h4>El usuario no tiene los permisos para ver el contenido</h4>				
				<br>
				<button class="btn btn-success" onclick="goBack()">REGRESAR</button>
			</div>
		</div>

		<jsp:include page="../include/footer.jsp"></jsp:include>		

	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${urlResource}/bootstrap/js/bootstrap.min.js"></script>
		
	<script>
		function goBack() {
		    window.history.back();
		}
	</script>
</body>
</html>