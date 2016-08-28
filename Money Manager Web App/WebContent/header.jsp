<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Money Manager</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- custom css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

<!--  jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  
<!--  BOOTSTRAP INCLUDES -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.jsp">Money Manager 0.1</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
      <c:choose>
     	<c:when test="${!sessionScope.email.isEmpty() && sessionScope.email != null}"> <!-- BUG - even if user registration was unsuccsessfull, in nav bar user e-mail is shown!!! -->
     	   <li><a href="home.jsp">Home</a></li>
     	   <li><a href="usersettings.jsp"> Settings</a></li>  	       
	        <p class="navbar-text">
     			<span class="navUsername"><c:out value="${sessionScope.fullname}"/></span>
     			<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
     		</p>
	        <form action="MainController" method="post" class="navbar-form navbar-left">
	        	<button type="submit" name="button" value="logout" class="btn btn-danger">Logout</button>
	        </form>
         </c:when>    
	     <c:otherwise>
     		<li><a href="login.jsp">Login</a></li>
			<form action="register.jsp" class="navbar-form navbar-left">
	        	<button type="submit" name="button" value="register" class="btn btn-success">Register</button>
	        </form>
  	     </c:otherwise>
  	  </c:choose> 
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</body>
</html>