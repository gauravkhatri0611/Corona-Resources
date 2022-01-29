<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="resources/css/styleo.css">
</head>
<body>
<%@include file="nav.jsp" %>
<!------ Include the above in your HEAD tag ---------->
 <c:if test="${param.error != null}">
     Error
</c:if>
		<!-- To logout msg on the login screen -->
		<c:if test="${param.logout!= null}" >
		
			<i>You have been logged out</i>
			
		</c:if>
<section class="login-block">
    <div class="container">
	<div class="row">
		<div class="col-md-4 login-sec">
		    <h2 class="text-center">Login Now</h2>
		   <form:form action="authenticateTheUser" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1" class="text-uppercase">Username</label>
    <input type="text" class="form-control" name="username" placeholder="">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1" class="text-uppercase">Password</label>
    <input type="password" class="form-control" name="password" placeholder="">
  </div>
  
  
    <div class="form-check">
    <button type="submit" class="btn btn-login float-right">Submit</button>
  </div>
  
</form:form>

		</div>
		<div class="col-md-8 banner-sec">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
              
            <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block img-fluid" src="resources/img/3.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
       	
  </div>
    </div>
  
            </div>	   
		    
		</div>
	</div>
</div>
</section>
</body>
</html>