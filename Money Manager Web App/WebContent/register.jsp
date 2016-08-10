<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/backgrounds.css" type="text/css"/>
	<title>Register</title>
	
	<style type="text/css">
	
	.red-warning{
		background-color: rgba(255,0,0,0.2);
		color: red;
		display: inline;
		margin: 0;
		padding: 0;
		border: 0;
		position: absolute;
		left: 60%;
	}

	.input-fields {
		display: inline;
		width: 200px;
		text-align: center;
		background-color: none;	
		margin: 0;
		position: absolute;
		left: 48%;
	}
	
	.right-container {
		display: block;
		width: 100%;		
		text-align: right;
		margin-bottom: 0.5%;
		position: relative;
	}
	
	.field-names {
		margin: 0;
		padding: 0;
		border: 0;
		display: inline;
		position: relative;
		right: 53%;
	}	
	
	.input-fields .radio-buttons{
		display:inline;
		width: 80px; 
		text-align: right-container; 
		border: 1px solid green;
		position: relative;
		right: 40%;
	}
	</style>
</head>

<body>
<h1 style="text-align: center;">Money manager v 1.0.0.</h1>
<form action="MainController" method="post">
	<h3 style="text-align: center;">Please enter your:</h3>
		<div class="right-container">
			<p class="field-names">First name:</p>			
					<!-- If no data was entered in input field, message will appear right to the input field 
					  -- If data was entered, data will be remebered till end of session (in case that some other data was not entered
					  -- we don't loose data after submitting -->
			<c:choose>
				<c:when test="${sessionScope.firstname.isEmpty()}">
					<input class="input-fields" type="text" name="firstname"/>
					<p class="red-warning">Please enter your first name</p>					
				</c:when>
				<c:otherwise>
					<input class="input-fields" type="text" name="firstname" value ="${sessionScope.firstname}"/>
				</c:otherwise>
			</c:choose>							
		</div>

		<div class="right-container">
			<p class="field-names">Last name:</p>
			<c:choose>
				<c:when test="${sessionScope.lastname.isEmpty()}">
					<input class="input-fields" type="text" name="lastname" /> 
					<p class="red-warning">Please enter your last name</p>
				</c:when>
				<c:otherwise>
					<input class="input-fields" type="text" name="lastname" value ="${sessionScope.lastname}"/> 
				</c:otherwise>			
			</c:choose>				
		</div>
		
		<div class="right-container">
			<p class="field-names">Date of birth:</p>
			<c:choose>
				<c:when test="${sessionScope.birthday.isEmpty()}">
					<input class="input-fields" type="date" name="birthday" />
					<p  class="red-warning">Please enter your birthday</p>
				</c:when>
				<c:otherwise>
					<input class="input-fields" type="date" name="birthday" value ="${sessionScope.birthday}"/> 
				</c:otherwise>			
			</c:choose>				
		</div>
		
		<div class="right-container">
			<p class="field-names">E-mail:</p>
			<c:choose>
				<c:when test="${sessionScope.email.isEmpty()}">
					<input class="input-fields" type="email" name="email" /> 
					<p  class="red-warning">Please enter your E-mail adress</p>						
				</c:when>
				<c:otherwise>
					<input class="input-fields" type="email" name="email" value ="${sessionScope.email}"/> 
				</c:otherwise>			
			</c:choose>
		</div>
		
		<!-- Check in database for duplicates -->

		<div class="right-container">
			<p class="field-names">User name:</p>
			<c:choose>
				<c:when test="${sessionScope.username.isEmpty()}">
					<input class="input-fields" type="text" name="username" /> 
					<p  class="red-warning">Please enter your username</p>
				</c:when>
				<c:otherwise>
					<input class="input-fields" type="text" name="username"  value ="${sessionScope.username}"/> 
				</c:otherwise>			
			</c:choose>
		</div>
		
		<div class="right-container">
			<p class="field-names">Password:</p>
			<c:choose>
				<c:when test="${sessionScope.password.isEmpty()}">
					<input class="input-fields" type="password" name="password" />
					<p  class="red-warning">Please enter your password</p>
				</c:when>
				<c:otherwise>
					<input class="input-fields" type="password" name="password" value ="${sessionScope.password}"/> 
				</c:otherwise>			
			</c:choose>
		</div>
		
		<div class="right-container">
			<p class="field-names">Repeat password:</p>
			
			<!-- Checks:
					- if reentered pass is equal to firstly entered one, if not gives message about wrong pass 
					- if reentered pass field is left empty, if so outpust a message
					- if everything is entered OK, keeps that value in case of some other error-->
			<c:choose>
				<c:when test="${sessionScope.repeatPassword.isEmpty()}">
					<input class="input-fields" type="password" name="repeatPassword" /> <p  class="red-warning">Please reenter your password</p>
				</c:when>					
				<c:when test="${(sessionScope.repeatPassword != sessionScope.password) && !sessionScope.repeatPassword.isEmpty()}">
					<input class="input-fields" type="password" name="repeatPassword"/> <p  class="red-warning">You have entered wrong password</p>
				</c:when>
				<c:otherwise>
					<input class="input-fields" type="password" name="repeatPassword" value ="${sessionScope.repeatPassword}"/>
				</c:otherwise>		
			</c:choose>
		</div>

		<div class="right-container">
			<p class="field-names">Profession:</p>			
			<c:choose>
				<c:when test="${sessionScope.profession.isEmpty()}">
						<input class="input-fields" type="text" name="profession" />
						<p  class="red-warning">Please enter your profession</p>
				</c:when>
				<c:otherwise>
					<input class="input-fields" type="text" name="profession" value ="${sessionScope.profession}"/> 
				</c:otherwise>			
			</c:choose>		
		</div>
		
		<div class="right-container">
			<p class="field-names">Sallary:</p>
			<c:choose>
				<c:when test="${sessionScope.income.isEmpty()}">
					<input class="input-fields" type="text" name="income" />
					<p  class="red-warning">Please enter your income</p>
				</c:when>
				<c:otherwise>
					<input class="input-fields" type="text" name="income" value ="${sessionScope.income}"/> 
				</c:otherwise>			
			</c:choose>	
		</div>
					
		<div class="right-container">
			<p class="field-names">Savings:</p>
			<input class="input-fields" type="text" name="savings" value ="${sessionScope.savings}"/>			
		</div>
	
		<div class="right-container" style="border: 1px solid green;">
			<p class="field-names">Payment is:</p>		
			<div class="radio-buttons">
				<p>Monthly
				<input type="radio" name="paymentType" value="monthly"/>
				</p>
			</div>			
			<div class="radio-buttons">
				<p>Weekly
				<input type="radio" name="paymentType" value="weekly"/>
				</p>							
			</div>
				
		</div>
		
		<div class="right-container" style="border: 1px solid green;">		
			<button type="submit" name="button" value="submit">Submit</button>
			<button type="submit" name="button" value="cancel">Cancel</button>				
		</div>
</form>
</body>
</html>