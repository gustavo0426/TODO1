<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">   
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Creacion de Productos</title>
	<spring:url value="/RESOURCES" var="urlResources" />
	<spring:url value="/product/save" var="urlSave" />
    <link href="${urlResources}/bootstrap/css/bootstrap.min.css" rel="stylesheet">    
    <link href="${urlResources}/bootstrap/css/theme.css" rel="stylesheet">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  </head>

  <body>
	<jsp:include page="../include/menu.jsp" />
    <div class="container theme-showcase" role="main">

      <div class="page-header">
		<h3 class="blog-title"><span class="label label-success">Registro del Producto</span></h3>
      </div>
      
      <spring:hasBindErrors name="product">
			<div class='alert alert-danger' role='alert'>
				Error al registrar el producto
				<ul>
					<c:forEach items="${errors.allErrors}" var="error">
						<li><spring:message message="${error}" /></li>
					</c:forEach>
				</ul>
			</div>
		</spring:hasBindErrors>

      <form:form action="${urlSave}" method="post" enctype="multipart/form-data" modelAttribute="product">
        <div class="row">
          <div class="col-sm-3">
            <div class="form-group">
              <label for="name">Name</label>
              <form:hidden path="id"/>
              <form:input type="text" class="form-control" path="name" id="name" required="required" />
            </div>  
          </div>
          <div class="col-sm-3">
            <div class="form-group">
              <label for="price">Precio</label>
              <form:input type="text" class="form-control" path="price" id="price" required="required" />
            </div>  
          </div>
          <div class="col-sm-3">
            <div class="form-group">
              <label for="stock">Stock</label>
              <form:input type="text" class="form-control" path="stock" id="stock" required="required" />
            </div>  
          </div>
          <div class="col-sm-3">
            <div class="form-group">
              <label for="imagen">Imagen</label>
              <form:hidden path="file"/>
              <input type="file" id="archivoImagen" name="archivoImagen" />
              <p class="help-block">Imagen del Producto</p>
            </div> 
          </div>         
        </div>
        
        <button type="submit" class="btn btn-danger" >Guardar</button>
      </form:form> 

      <hr class="featurette-divider">

	<jsp:include page="../include/footer.jsp" />
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script src="${urlResources}/bootstrap/js/bootstrap.min.js"></script> 
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  </body>
</html>
