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
    
  <h3 class="heading">List of blood donors</h3>
    <br><br>
    <table class="table" style="width: auto;">
        <tr>

            <th>Name</th>
            <th>Contact</th>
            <th>Blood Group</th>
           
            <th>Delete</th>
            <th>Update</th>
        </tr>
        <c:forEach items="${donorList}" var="bloodd">
            <tbody>
                <tr>

                    <td width="60">${bloodd.name}</td>
                    <td width="60">${bloodd.phn}</td>
                    <td width="60">${bloodd.blood}</td>
                   
                    <td width="60"><a href="delete/${bloodd.phn}"><img id=delete src="resources/img/decline.png" alt=""></a>
                    <td width="60"><a href="edit${bloodd.phn}"><img id=update src="resources/img/update.png" alt=""></a>
                    </td>
                    <%-- -- <td width="60">    <button class="btn" data-target="#mymodal" data-toggle="modal"><a href="update/${bloodd.phn}"><img id=update src="resources/img/update.png" alt=""></button>


        <br><br>
      
                    
           
                  <div class="modal" id="mymodal">

            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <br><br>
                        <h4 class="heading2">Please fill the information below</h4>
                        <button class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form>
                        
                            <div class="form-group">
                           
                                <input class="un " name="name" type="text" value=${bloodd.name}>
                                <input class="un " type="text" name="phn" value=${bloodd.phn}>
                                 <input class="un " type="text" name="blood" value=${bloodd.blood}>
                              
                                <button type="submit" class="btn2">Submit</button>
                               
                            </div>
                        </form>

                    </div>

                </div>
            </div>
        </div>--%>

     </tr>
            </tbody>
        </c:forEach>
    </table>
    

  </body>
</html>