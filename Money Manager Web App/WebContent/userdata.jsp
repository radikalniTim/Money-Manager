<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>User data</title>
</head>
<body>
	<form action="UserData" method="post">
		<h2 align="center">User data and settings</h2>
		
		<table border="0" align="center">
			<tr>
				<td align="right">First Name:</td> <td><c:out value="${sessionScope.firstname}"/></td> <!-- calling data from sessionScope -->
			</tr>	
			<tr>
				<td align="right">Last Name:</td> <td><c:out value="${sessionScope.lastname}"/></td> 
			</tr>
			<tr>
				<td align="right">User Name:</td> <td><c:out value="${sessionScope.username}"/></td>
			</tr>
			<tr>
				<td align="right">Profession:</td> <td><c:out value="${sessionScope.profession}"/></td>
			</tr>	
			<tr>
				<td align="right">Income:</td> <td><c:out value="${sessionScope.income}"/></td>
			</tr>
			<tr>
				<td align="right">Date of payment:</td> <td><c:out value="${sessionScope.paymentDate}"/></td>
			</tr>
			<tr>
				<td align="right">Payment type:</td> <td><c:out value="${sessionScope.paymentType}"/></td>
			</tr>
		</table>

		<br />
		
		<p>Back to <a href="index.jsp">home</a></p>

		
	</form>
</body>
</html>