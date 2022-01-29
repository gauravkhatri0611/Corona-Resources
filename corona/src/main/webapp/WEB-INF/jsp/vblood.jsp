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
    <link rel="stylesheet" href="resources/css/done.css">
<title>Insert title here</title>
</head>
<body>

<nav id="sidenav">
        
        <ul>
            <h1 id="admin">VIEW RESOURCES</h1>
            <li class="table2"><a href="view">Go Back</a></li>
            <li class="table2"><a href="hello">Home</a></li>
            
            
            
           
   
        </ul>
    </nav>

    
  <h3 class="heading">List of blood donors</h3>
    <br><br>
    <table class="table" style="width: auto;">
        <tr>

            <th>Name</th>
            <th>Contact</th>
            <th>Blood Group</th>
           
           
        </tr>
        <c:forEach items="${donorList}" var="bloodd">
            <tbody>
                <tr>

                    <td width="60">${bloodd.name}</td>
                    <td width="60">${bloodd.phn}</td>
                    <td width="60">${bloodd.blood}</td>
                   
                    



     </tr>
            </tbody>
        </c:forEach>
    </table>
    

  </body>
</html>