<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<jsp:include page="header.jsp"/>
<body>
	<form action="MainController" method="post">
		
		<h2>
			<p style="text-align:center">Please login</p>
		</h2> 
		
		<table border="0" align="center">
			<tr>
				<td align="right">Your E-mail:</td>				
				<td width="100"><input type="text" name="email"></td>
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