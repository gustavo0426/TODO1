<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<spring:url value="/" var="urlPublic" />
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
	
	<sec:authorize access="isAnonymous()"> 
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${urlPublic}">Catalogos</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="${urlPublic}">Acerca</a></li>
				<li><a href="${urlPublic}formLogin">Login</a></li>
			</ul>
		</div>
	</sec:authorize>
	
	<sec:authorize access="hasAnyAuthority('EDITOR')">	
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${urlPublic}">Catalogos</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="${urlPublic}sale/show">Facturas</a></li>
				<li><a href="${urlPublic}">Acerca</a></li>
				<li><a href="${urlPublic}logout">Salir</a></li>
			</ul>
		</div>
	</sec:authorize>
	
	<sec:authorize access="hasAnyAuthority('GERENTE')">	
		
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${urlPublic}">Catalogos</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="${urlPublic}product/index">Productos</a></li>
				<li><a href="${urlPublic}sale/show">Facturas</a></li>
				<li><a href="${urlPublic}">Acerca</a></li>
				<li><a href="${urlPublic}logout">Salir</a></li>
			</ul>
		</div>
	</sec:authorize>
	</div>
</nav>