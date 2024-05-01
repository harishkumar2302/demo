<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Here!!</title>
</head>
<body>
	<form:form modelAttribute="users" action="registerresult" method="POST">
		<center>
			<table>
				<tr>
					<td><form:label path="firstName">First Name:</form:label></td>
					<td><form:input path="firstName" type="text" id="firstName" /></td>
				</tr>
				<tr>
					<td><form:label path="lastName">Last Name:</form:label></td>
					<td><form:input path="lastName" type="text" id="lastName" /></td>
				</tr>
				<tr>
					<td><form:label path="password">Password:</form:label></td>
					<td><form:input path="password" type="password" id="password" /></td>
				</tr>
				<tr>
					<td><form:label path="gender">Gender:</form:label></td>
					<td><form:radiobutton path="gender" value="M" />Male <form:radiobutton
							path="gender" value="F" />Female</td>
				</tr>
				<tr>
					<td><form:label path="dob">Date of Birth:</form:label></td>
					<td><form:input path="dob" type="date" id="dob" /></td>
				</tr>
				<tr>
					<td><form:label path="qualification">Qualification:</form:label></td>
					<td><form:select path="qualification" items="${qualificationList}"></form:select> </td>
				</tr>
				<tr>
					<td><form:label path="annualIncome">Annual Income:</form:label></td>
					<td><form:input path="annualIncome" type="text"/> </td>
				</tr>
				<tr>
					<td><form:label path="phoneNumber">Phone Number:</form:label></td>
					<td><form:input path="phoneNumber" type="text"/> </td>
				</tr>
				<tr>
					<td><form:label path="r_address">Residential Address</form:label></td>
					<td><form:textarea path="r_address" rows="5" cols="30"/> </td>
				</tr>
				<tr>
					<td><form:label path="o_address">Official Address</form:label></td>
					<td><form:textarea path="o_address" rows="5" cols="30"/> </td>
				</tr>
				<tr>
					<td><form:label path="email">Mail ID:</form:label></td>
					<td><form:input path="email" type="email" id="email" /></td>
				</tr>
				<tr>
					<td><button type="submit" name="submit">Register</button></td>
				</tr>

			</table>
		</center>
	</form:form>
</body>
</html>