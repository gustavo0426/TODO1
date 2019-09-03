<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">   
    <meta name="description" content="">
    <meta name="author" content="">
    <title>TODO1</title>
	<spring:url value="/RESOURCES" var="urlResources" />
    <link href="${urlResources}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${urlResources}/bootstrap/css/theme.css" rel="stylesheet">

  </head>

  <body>
	<jsp:include page="include/menu.jsp" />
    <div class="container theme-showcase" role="main">
    
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>         
          <li data-target="#myCarousel" data-slide-to="3"></li>
          <li data-target="#myCarousel" data-slide-to="4"></li>
          <li data-target="#myCarousel" data-slide-to="5"></li>	
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="item active">         
            <img src="${urlResources}/images/banner1.jpg" alt="Slide" title="Some text" >
          </div>
          <div class="item">         
            <img src="${urlResources}/images/banner2.jpg" alt="Slide" title="Some text" >
          </div>
          <div class="item">         
            <img src="${urlResources}/images/banner3.jpg" alt="Slide" title="Some text" >
          </div>
          <div class="item">         
            <img src="${urlResources}/images/banner4.jpg" alt="Slide" title="Some text" >
          </div>
		  <div class="item">         
            <img src="${urlResources}/images/banner5.jpg" alt="Slide" title="Some text" >
          </div>
		  <div class="item">         
            <img src="${urlResources}/images/banner6.jpg" alt="Slide" title="Some text" >
          </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

      <div class="row page-header">          
        <div class="col-lg-12">         
          <h2 class="text text-center"><span class="label label-success">Catalogos</span></h2> 
        </div>
      </div>
      
	<jsp:include page="include/footer.jsp" />
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script src="${urlResources}/bootstrap/js/bootstrap.min.js"></script> 
  </body>
</html>
