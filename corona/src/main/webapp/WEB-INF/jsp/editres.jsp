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
 <form:form action="update2" modelAttribute="resources">
		 <p>NAME (*):</p> <form:input path="name" cssClass="textbox" />
		<form:errors path="name" cssClass="error" />
		
		<br><br>
		
		<p>MOBILE N0 (*):</p><form:input path="pno" cssClass="textbox"/>
		<form:errors path="pno" cssClass="error"></form:errors>
		
		<br><br>
		
		<p>E-MAIL(*):</p><form:input path="email" cssClass="textbox"/>
		<form:errors path="email" cssClass="error"></form:errors>

		
				
	    <br><br>
	    <p>STATE:</p><form:select path="state" cssClass="textbox">
		<form:option value="Andhra Pradesh" label="Andhra Pradesh"/>
		<form:option value="Arunachal Pradesh" label="Arunachal Pradesh"/>
		<form:option value="Assam" label="Assam"/>
		<form:option value="Bihar" label="Bihar"/>
		<form:option value="Chhatisgarh" label="Chhatisgarh"/>
		<form:option value="Goa" label="Goa"/>
		<form:option value="Gujrat" label="Gujrat"/>
		<form:option value="Himachal Pradesh" label="Himachal Pradesh"/>
		<form:option value="Jharkhand" label="Jharkhand"/>
		<form:option value="Karnataka" label="Karnataka"/>
		<form:option value="Kerela" label="Kerala"/>
		<form:option value="Madhya Pradesh" label="Madhya Pradesh"/>
		<form:option value="Maharashtra" label="Maharashtra"/>
		<form:option value="Manipur" label="Manipur"/>
		<form:option value="Meghalya" label="Meghalya"/>
		<form:option value="Mizoram" label="Mizoram"/>
		<form:option value="Nagaland" label="Nagaland"/>
		<form:option value="Orissa" label="Orissa"/>
		<form:option value="Punjab" label="Punjab"/>
		<form:option value="Rajasthan" label="Rajasthan"/>
		<form:option value="Sikkim" label="Sikkim"/>
		<form:option value="TamilNadu" label="TamilNadu"/>
		<form:option value="Telangana" label="Telangana"/>
		<form:option value="Tripura" label="Tripura"/>
		<form:option value="Uttrakhand" label="Uttrakhand"/>
		<form:option value="Uttar Pradesh" label="Uttar Pradesh"/>
		<form:option value="WestBengal" label="WestBengal"/>
		<form:errors path="state" cssClass="error"></form:errors>
	
		
			
		
		</form:select>
		<br><br>
	    <p>RESOURCE:</p> <form:select path="resource" cssClass="textbox">
	   <form:option value="Oxygen" label="Oxygen"/>
		<form:option value="Ventilators" label="Ventilators"/>
		<form:option value="Medicine" label="Medicine"/>
	    </form:select>
		<br><br>		
		
		<p>QUANTITY:</p> <form:input path="quantity" cssClass="textbox"/>
		<form:errors path="quantity" cssClass="error" />
		<br><br>
		<p>ADDRESS OF RESOURCE:</p> <form:input path="address"  cssClass="textbox" readonly="true"/>
		<form:errors path="address" cssClass="error" />
		<br><br>
		<input type="submit" value="Submit" />

</form:form>
</body>
</html>