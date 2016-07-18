<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Register</title>
</head>
<body>
	<form action="MainController" method="post">
		<h2>Please enter requested data</h2>
		<table border="0">
			<td colspan="2">Insert Your name and surname:</td>
			<tr>
				<td>First name:</td> 
				<td><input type="text" name="firstname" /></td>
			</tr>		
			<tr>
				<td>Last name:</td> 
				<td><input type="text" name="lastname" /></td>
			</tr>
			<tr>
				<td>Date of birth:</td> 
				<td><input type="text" name="birthday" /></td>
			</tr>
		</table>
		
		<br />
		
		<table border="0">
			<td colspan="2">Please write Your:</td>
			<tr>		
				<td>Proffesion: </td> 
				<td><input type="text" name="proffesion" /></td>
			</tr>
			
			<tr>		
				<td>Month sallary: </td> 
				<td><input type="text" name="monthIncome" /></td>
			</tr>
			
			<tr>		
				<td>Savings: </td> 
				<td><input type="text" name="savings" /></td>
			</tr>
			
			<tr>
				<td>
					<button type="submit" name="button" value="submit">Submit</button>
				</td>
				<td>
					<button type="submit" name="button" value="cancel">Cancel</button>
				</td>
					
			</tr>
			
			<tr>

			</tr>
			

		</table>	


			
	</form>
</body>
</html>