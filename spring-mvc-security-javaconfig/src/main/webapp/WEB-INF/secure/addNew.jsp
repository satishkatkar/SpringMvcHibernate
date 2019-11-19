<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form:form modelAttribute="UserInfo" method="post"> 
   <h3 align="center">Registration Form</h3>
   <table  align="center">
      
       <tr>
         <td align="left"> <form:label  path="userName">Enter UserName :</form:label></td>
         <td align="right"> <form:input path="userName" ></form:input></td>
      </tr>
        <tr>
         <td align="left"> <form:label path="password">Enter Password :</form:label></td>
         <td align="right"> <form:input path="password" type="password"></form:input></td>
      </tr>
        <tr>
         <td align="left"> <form:label path="role">Roles :</form:label></td>
         <td > <form:select  path="role">
                               <form:option value="NONE">--SELECT---</form:option>
                               <form:option value="ADMIN">ADMIN</form:option>
                               <form:option value="MANAGER">MANAGER</form:option>
                               <form:option value="EMPLOYEE">EMPLOYEE</form:option>
                             </form:select></td>
         
      </tr>
     <tr>
         <td align="left"> <form:label path="fullName">Enter fullname :</form:label></td>
         <td align="right"> <form:input path="fullName"></form:input></td>
      </tr>
      <tr>
           <td align="left"><form:label path="country">country :</form:label></td>
           <td align="right"><form:input path="country"/></td>
           
      </tr>
      <tr>
         <td align="left"> <form:label path="enabled">enable :</form:label></td>
         <td align="right"> <form:input path="enabled"></form:input></td>
      </tr>
      <tr>
      <td/>
      <td align="center"><form:button id="register" name="register">Register</form:button></td>
      </tr>
      <tr>
  
      </tr>
   </table>
   </form:form>
</body>
</html>