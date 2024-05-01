<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Here!!</title>
</head>
<body>
	<form:form modelAttribute="users" action="userLogin" method="post">
		<center>
		<table>
			<tr>
				<td><form:label path="id">UserId:</form:label></td>
				<td><form:input path="id" type="text" id="id" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password:</form:label></td>
				<td><form:input path="password" type="password" id="password" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>
			<tr><td><a href="forgotPassword">Forgot Password</a></td>
			<td><a href="register">New User Register</a></td></tr>
			<center>
			</table>
	</form:form>
	
</body>
</html>