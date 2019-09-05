<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Listado de Productos</title>
    <spring:url value="/RESOURCES" var="urlResources" />
    <spring:url value="/product/create" var="urlCreate" />
    <spring:url value="/product/edit" var="urlEdit" />
    <spring:url value="/product/delete" var="urlDelete" />
    <spring:url value="/" var="urlRoot" />
    <link href="${urlResources}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${urlResources}/bootstrap/css/theme.css" rel="stylesheet">
    
  </head>

  <body>
	<jsp:include page="../include/menu.jsp" />
    <div class="container theme-showcase" role="main">

      <h3>Listado de Productos</h3>
      
      	<c:if test="${mensaje != null}">
			<div class="alert alert-success" role="alert">${mensaje}</div>
		</c:if>
      
      <a href="${urlCreate}" class="btn btn-success" role="button" title="Nuevo Producto" >Nuevo</a><br><br>
	
      <div class="table-responsive">
        <table class="table table-hover table-striped table-bordered">
            <tr>
                <th>Nombre</th>
                <th>Precio</th>
                <th>Stock</th>
                <th>Acciones</th>
            </tr>
            <tbody>
	            <c:forEach items="${listProduct}" var="product">
	            	<tr>
		                <td>${product.name}</td>
		                <td>${product.price}</td>
		                <td>${product.stock}</td>
		                <td>
		                    <a href="${urlEdit}/${product.id}" class="btn btn-success btn-sm" role="button" title="Modificar" ><span class="glyphicon glyphicon-pencil"></span></a>
		                    <a href="${urlDelete}/${product.id}" class="btn btn-danger btn-sm" role="button" title="Eliminar" ><span class="glyphicon glyphicon-trash"></span></a>
		                </td>
            		</tr>
	            </c:forEach>
            </tbody>
        </table>
      </div>
      <div class="text-center">
    		<a href="${urlRoot}" class="btn btn-success btn-primary" role="button" title="Nuevo Producto" >Aceptar</a><br><br>
	  </div>
          
      <hr class="featurette-divider">
      
	<jsp:include page="../include/footer.jsp" />
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script src="${urlResources}/bootstrap/js/bootstrap.min.js"></script>     
  </body>
</html>
