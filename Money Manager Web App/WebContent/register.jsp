<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Register</title>
</head>
<body>
<h1 align="center">Money manager v 1.0.0.</h1>
<form action="MainController" method="post">
	<table align="center">
		<tr>
			<td colspan="3">
				<h3 align="center">Please enter your:</h3>
			</td>
		</tr>
		<tr>
			<td align = "right">First name:</td> 
			<td>
				<input type="text" name="firstname" />			
				<c:choose>
					<c:when test="${sessionScope.firstname.isEmpty()}">
						Please enter your first name
					</c:when>			
				</c:choose>	
			</td>	
		</tr>
				
		<tr>
			<td align = "right">Last name:</td> 
			<td>
				<input type="text" name="lastname" />
				<c:choose>
					<c:when test="${sessionScope.lastname.isEmpty()}">
						Please enter your last name
					</c:when>			
				</c:choose>
			</td>
		</tr>
		
		<tr>
			<td align="right">Date of birth:</td> 
			<td>
				<input type="date" name="birthday" />
				<c:choose>
					<c:when test="${sessionScope.birthday.isEmpty()}">
						Please enter your date of birth
					</c:when>			
				</c:choose>
			</td>
		</tr>
		
		<!-- Check in database for duplicates -->
		<tr>
			<td align = "right">User name:</td> 
			<td>
				<input type="text" name="username" />
				<c:choose>
					<c:when test="${sessionScope.username.isEmpty()}">
						Please enter your username
					</c:when>			
				</c:choose>
			</td>
		</tr>
		<tr>
			<td align = "right">Password:</td> 
			<td>
				<input type="password" name="password" />
				<c:choose>
					<c:when test="${sessionScope.password.isEmpty()}">
						Please enter your password
					</c:when>		
				</c:choose>
			</td>
		</tr>
	</table>

	<br />
	<br />

	<table align="center">
		<tr>		
			<td align = "right">Profession:</td> 
			<td>
				<input type="text" name="profession" />
				<c:choose>
					<c:when test="${sessionScope.profession.isEmpty()}">
						Please enter your profession
					</c:when>			
				</c:choose>			
			</td>
		</tr>
				
		<tr>		
			<td align = "right">Sallary: </td> 
			<td>
				<input type="text" name="income" />
				<c:choose>
					<c:when test="${sessionScope.income.isEmpty()}">
						Please enter your income
					</c:when>
				</c:choose>
			</td>
		</tr>
					
		<tr>		
			<td align = "right">Savings: </td> 
			<td><input type="text" name="savings" /></td>
		</tr>			
		<tr>		
			<td align = "right">Day of payment: </td> 
			<td><input type="text" name="paymentDate" /></td>
		</tr>
		
		<tr>		
			<td align = "right">Payment is: </td> 
			<td><input type="radio" name="paymentType" value="monthly"/>Monthly
			<input type="radio" name="paymentType" value="weekly"/>Weekly</td>
		</tr>
			
		<tr>
			<td>
				<button type="submit" name="button" value="submit">Submit</button>
			</td>
			<td>
				<button type="submit" name="button" value="cancel">Cancel</button>
			</td>					
		</tr>
					
	</table>
</form>
</body>
</html>