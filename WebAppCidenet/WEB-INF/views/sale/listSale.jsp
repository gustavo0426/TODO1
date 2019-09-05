<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Listado de Facturas</title>
    <spring:url value="/RESOURCES" var="urlResources" />
    <spring:url value="/" var="urlRoot" />
    <link href="${urlResources}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${urlResources}/bootstrap/css/theme.css" rel="stylesheet">
    
  </head>

  <body>
	<jsp:include page="../include/menu.jsp" />
    <div class="container theme-showcase" role="main">

      <h3>Listado de Facturas</h3>
      
      	<c:if test="${mensaje != null}">
			<div class="alert alert-success" role="alert">${mensaje}</div>
		</c:if>
	
      <div class="table-responsive">
        <table class="table table-hover table-striped table-bordered">
            <tr>
                <th>Id Factura</th>
                <th>Cliente</th>
                <th>Fecha</th>
                <th>Pago</th>
            </tr>
            <tbody>
	            <c:forEach items="${listSale}" var="sale">
	            	<tr>
		                <td>${sale.id}</td>
		                <td>${sale.customer.name}</td>
		                <td>
		                	<fmt:formatDate value="${sale.date}" pattern="dd-MM-yyyy"/>
		                </td>
		                <td>${sale.payment}</td>
            		</tr>
	            </c:forEach>
            </tbody>
        </table>
       <div class="text-center">
    		<a href="${urlRoot}" class="btn btn-success btn-primary" role="button" title="Nuevo Producto" >Aceptar</a><br><br>
		</div>
      </div>
          
      <hr class="featurette-divider">
      
	<jsp:include page="../include/footer.jsp" />
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script src="${urlResources}/bootstrap/js/bootstrap.min.js"></script>     
  </body>
</html>
