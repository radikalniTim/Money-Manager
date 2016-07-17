<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>User data</title>
</head>
<body>
	<form action="UserData" method="post">
		<h2>User data and settings</h2>
		
		<table border="0">
			<tr>
				<td align="right">First Name: </td><td> <%= (String)request.getAttribute ("firstname") %></td> <!-- pozivanje varijable iz servleta -->
			</tr>	
			<tr>
				<td align="right">Last Name: </td><td> <%= (String)request.getAttribute ("lastname") %></td> <!-- pozivanje varijable iz servleta -->
			</tr>
			<tr>
				<td align="right">Proffesion: </td><td> <%= (String)request.getAttribute ("proffesion") %></td> <!-- pozivanje varijable iz servleta -->
			</tr>	
			<tr>
				<td align="right">Monthly income: </td><td> <%= request.getAttribute ("monthIncome") %></td> <!-- pozivanje varijable iz servleta -->
			</tr>
		</table>
		
		<br />
		
	</form>
</body>
</html>