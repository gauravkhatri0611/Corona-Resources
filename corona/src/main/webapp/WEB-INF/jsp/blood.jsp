<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

                            <form:form> 
        <table>
          
            <tr>
                <td>Name:</td>
                <td><form:input path="name" value=${donor.name}/></td>
            </tr>
            <tr>
                <td>Blood grp:</td>
                <td><form:input path="blood" /></td>
            </tr>
            
            <tr>
                <td>Telephone:</td>
                <td><form:input path="phn" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
</body>
</html>