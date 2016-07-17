<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Log in</title>
</head>
<body>
	<form action="MainController" method="post">
		
		<h2>
			<p style="text-align:center">Please log in or register</p>
		</h2> 
		
		<table border="0" align="center">
			<tr>
				<td align="right">User name:</td>				
				<td width="100"><input type="text" name="userName"></td>
			</tr>
			<tr>
				<td align="right">Password:</td>				
				<td width="200"><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>
					<button type="submit" name="button" value="login">Log in</button>
				</td>
				<td>
					<button type="submit" name="button" value="cancel">Cancel</button>
				</td>
				<td>
					<button type="submit" name="button" value="register">Register</button>
				</td>
					
			</tr>
		</table>
		
	</form>

</body>
</html>