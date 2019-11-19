<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
    <head>
        <title>Spring 4 Security Example</title>
    </head>
    <body>
      <h3>Logged In User Detail</h3>
      <table>
        <tr><td>Name :</td><td><c:out value="${user.fullName}"/></td></tr>
        <tr><td>Role :</td><td><c:out value="${user.role}"/></td></tr>
      </table>      
      <form action="<%=request.getContextPath()%>/appLogout" method="POST">
        <input type="submit" value="Logout"/>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>		
      </form>   
      <sec:authorize access="hasRole('ADMIN')">
		 	<div class="well">
		 	    <spring:url var="add" value="/user/addNew"></spring:url>
		 		<a href="${add}">Add New User</a>
		 	</div>
	 	</sec:authorize>   
    </body>
</html> 