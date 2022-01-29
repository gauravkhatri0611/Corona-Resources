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
 <meta http-equiv="Pragma" content="no-cache">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="resources/css/done2.css">
<title>Insert title here</title>


</head>
<body>
<%@include file="nav.jsp" %>
<nav id="sidenav">
        
        <ul>
            <h1 id="admin">DASHBOARD</h1>
            <li class="table2"><a href="getresources">Requests </a></li>
            <li class="table2"><a href="approvedresources">Approved Requests</a></li>
            <li class="table2"><a href="done">Blood</a></li>
            
            <c:url var="logoutUrl" value="/j_spring_security_logout" />
    <form:form action="${logoutUrl}" id="logout" method="post">
        <input type="hidden" name="${_csrf.parameterName}"
            value="${_csrf.token}" />
            <input type="submit" value="Logout" cssClass="logout"/>
    </form:form>
            
           
   
        </ul>
    </nav>
<!--<c:url var="logoutUrl" value="/j_spring_security_logout" />
    <form:form action="${logoutUrl}" id="logout" method="post">
        <input type="hidden" name="${_csrf.parameterName}"
            value="${_csrf.token}" />
            <input type="submit" value="Logout"/>
    </form:form>-->
    
  <h3 class="heading">List of Resources</h3>
    <br><br>
    <table class="table" style="width: auto;">
        <tr>
            <th>Name</th>
           <th>PhoneNo.</th>
           <th>Email</th>
           <th>State</th>
           <th>Resource</th>
           <th>Address</th>
           <th>Quantity</th>
           <th>Approve</th>
           <th>Decline</th>
        </tr>
        <c:forEach items="${resourcelist}" var="resources">
            <tbody>
                <tr>
                    <td width="60">${resources.name}</td>
                    <td width="60">${resources.pno}</td>
           			<td width="60">${resources.email}</td>
          			<td width="60">${resources.state}</td>
           			<td width="60">${resources.resource}</td>
          			<td width="60">${resources.address}</td>
          			<td width="60">${resources.quantity}</td>
          			
          			<td width="60"><a href="approve${resources.address}"><img id=delete src="resources/img/approve.png" alt=""></a></td>
                    <td width="60"><a href="decline${resources.address}" onclick="return confirm('Are you sure you want to decline this item?');"><img id=delete src="resources/img/decline.png" alt=""></a></td>
                
                    
                </tr>
            </tbody>
        </c:forEach>
    </table>
  </body>
</html>