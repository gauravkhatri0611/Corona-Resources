<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %> 
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Corona</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/r.css">
    <script src='https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.js'></script>
    <link href='https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.css' rel='stylesheet' />
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri&display=swap" rel="stylesheet">
</head>
 <body>
   <%--  <div align="center">
        <h1>New/Edit Contact</h1>
        <form:form action="update" method="post" modelAttribute="usere">
        <table>
           
            <tr>
                <td>Name:</td>
                <td><form:input path="name"  /></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><form:input path="phn" /></td>
            </tr>
            <tr>
                <td>Blood:</td>
                <td><form:input path="blood" /></td>
            </tr>
            
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
    </div>

    
    
    <body>
   
     
    <div class="user">
        <header class="user__header">
            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3219/logo.svg" alt="" />
            <h1 class="user__title">A lightweight and simple sign-up form</h1>
        </header>
        
        <form:form action="update" method="post" modelAttribute="usere">
            <div class="form__group">
               <form:input path="name" cssClass="form__input" />
            </div>
            
            <div class="form__group">
                <form:input path="phn" cssClass="form__input" readonly="true" />
            </div>
            
            <div class="form__group">
                <form:input path="blood" cssClass="form__input" />
            </div>
            
            <input type="submit" value="Save">
      </form:form>
    </div>
    
</body>

</html>

    --%>









 <div class="svgf">
        <div class="para">

<br><br>

	        <form:form action="update" method="post" modelAttribute="usere">

		 <p>NAME (*):</p> <form:input path="name" cssClass="textbox" />
		<form:errors path="name" cssClass="error" />
		
		<br><br>
		
		<p>Phone no.</p>
                <form:input path="phn" cssClass="textbox" readonly="true" />
         
            
		
					<br><br>
	
	   
		
	<p> BLOOD GROUP</p><form:select path="blood" cssClass="textbox" id="location">
                                    <form:option value="A+" label="A+"/>
                                    <form:option value="A-" label="A-"/>
                                    <form:option value="B+" label="B+"/>
                                    <form:option value="B-" label="B-"/>
                                    <form:option value="O+" label="O+"/>
                                    <form:option value="O-" label="O-"/>
                                    <form:option value="AB+" label="AB+"/>
                                    <form:option value="AB-" label="AB-"/>
                                </form:select><br><br>
		<input type="submit" value="Update" />
   </div>
 </form:form>
    
 
        </div>
    
    
      

  

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"
    integrity="sha512-d8F1J2kyiRowBB/8/pAWsqUl0wSEOkG5KATkVV4slfblq9VRQ6MyDZVxWl2tWd+mPhuCbpTB4M7uU/x9FlgQ9Q=="
    crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/noframework.waypoints.min.js"
    integrity="sha512-fHXRw0CXruAoINU11+hgqYvY/PcsOWzmj0QmcSOtjlJcqITbPyypc8cYpidjPurWpCnlB8VKfRwx6PIpASCUkQ=="
    crossorigin="anonymous"></script>
<script src="resources/js/script.js"></script>

</html>