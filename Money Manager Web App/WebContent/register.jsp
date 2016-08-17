<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Register</title>
	<jsp:include page="header.jsp"/>
	
	<style type="text/css">	
	p{
		margin: 0;
		padding: 0;
		border: 0;
	}
	</style>
</head>

<body>
	<form action="MainController" method="post">
		
		<div class="container">
<!----------------------- ENTER FIRST NAME ----------------------->
			<div class="form-group">
				<div class="row">
					<h2 class="text-center">Please register:</h2>
					
					<div class="col-sm-5">
						<label class="label-right text-important pull-right">First name:</label>
					</div>
					
					<div class="col-sm-2">														
						<input class="input-fields" type="text" name="firstname" value="${firstname}"/>			
					</div>
					
					<div class="col-sm-5 text-left">					
						<p class="alert-danger"><c:out value="${errorfirstname}"/></p>
					</div>					
				</div> <!-- closing "row" class -->
			</div> <!-- closing "form-group" class -->
			
<!----------------------- ENTER LAST NAME ----------------------->
			<div class="form-group">
				<div class="row">				
					<div class="col-sm-5">
						<label class="label-right text-important pull-right">Last name:</label>
					</div>
					
					<div class="col-sm-2">			
						<input class="input-fields" type="text" name="lastname" value="${lastname}"/>															
					</div>
					
					<div class="col-sm-5 text-left">					
						<p class="alert-danger"><c:out value="${errorlastname}"/></p>
					</div>					
				</div> <!-- closing "row" class -->
			</div> <!-- closing "form-group" class -->

<!----------------------- ENTER E-MAIL ----------------------->			
			<div class="form-group">
				<div class="row">				
					<div class="col-sm-5">
						<label class="label-right text-important pull-right">E-mail:</label>
					</div>
					
					<div class="col-sm-2">
						<input class="input-fields" type="email" name="email" value ="${email}"/>
					</div>
					
					<div class="col-sm-5 text-left">					
						<p class="alert-danger"><c:out value="${erroremail}"/></p>
					</div>					
				</div> <!-- closing "row" class -->
			</div> <!-- closing "form-group" class -->

<!----------------------- ENTER DATE OF BIRTH ----------------------->			
			<div class="form-group">
				<div class="row">				
					<div class="col-sm-5">
						<label class="label-right text-important pull-right">Date of birth:</label>
					</div>
					
					<div class="col-sm-2">			
						<input class="input-fields" type="date" name="birthday" value ="${birthday}"/>				
					</div>
					
					<div class="col-sm-5 text-left">					
						<p class="alert-danger"><c:out value="${errorbirthday}"/></p>
					</div>					
				</div> <!-- closing "row" class -->
			</div> <!-- closing "form-group" class -->

<!------------------------- ENTER PASSWORD ------------------------->			
			<div class="form-group">
				<div class="row">				
					<div class="col-sm-5">
						<label class="label-right text-important pull-right">Pasword:</label>
					</div>
					
					<div class="col-sm-2">			
						<input class="input-fields" type="text" name="password" value ="${password}"/>				
					</div>
					
					<div class="col-sm-5 text-left">					
						<p class="alert-danger"><c:out value="${errorpassword}"/></p>
					</div>					
				</div> <!-- closing "row" class -->
			</div> <!-- closing "form-group" class -->

<!----------------------- REPEAT PASSWORD ----------------------->			
			<div class="form-group">
				<div class="row">				
					<div class="col-sm-5">
						<label class="label-right text-important pull-right">Repeat your pasword:</label>
					</div>
					
					<div class="col-sm-2">
						<input class="input-fields" type="text" name="repeatPassword" value ="${repeatPassword}"/>			
					</div>
					
					<div class="col-sm-5 text-left">					
						<p class="alert-danger"><c:out value="${errorrptpass}"/></p>
					</div>					
				</div> <!-- closing "row" class -->
			</div> <!-- closing "form-group" class -->

<!----------------------- ENTER PROFESSION ----------------------->			
			<div class="form-group">
				<div class="row">				
					<div class="col-sm-5">
						<label class="label-right text-important pull-right">Profession:</label>
					</div>
					
					<div class="col-sm-2">			
						<input class="input-fields" type="text" name="profession" value ="${profession}"/>				
					</div>
					
					<div class="col-sm-5 text-left"></div>					
				</div> <!-- closing "row" class -->
			</div> <!-- closing "form-group" class -->

<!----------------------- ENTER INCOME ----------------------->			
			<div class="form-group">
				<div class="row">				
					<div class="col-sm-5">
						<label class="label-right text-important pull-right">Income:</label>
					</div>
					
					<div class="col-sm-2">
						<input class="input-fields" type="text" name="income" value ="${income}"/>			
					</div>
					
					<div class="col-sm-5 text-left"></div>					
				</div> <!-- closing "row" class -->
			</div> <!-- closing "form-group" class -->
			
<!----------------------- BUTTONS ------------------------->					
			<div class="form-group">
				<div class="row">
					<div class="col-sm-5"></div>					
					<div class="col-sm-2">			
						<button type="submit" name="button" value="submit">Submit</button>
						<button type="submit" name="button" value="cancel">Cancel</button>				
					</div>
				</div> <!-- closing "row" class -->
			</div> <!-- closing "form-group" class -->

		</div>
	
	</form>
</body>
</html>