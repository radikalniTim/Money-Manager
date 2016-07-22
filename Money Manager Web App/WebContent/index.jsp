<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Money Manager</title>
</head>
<body>
<h1>Welcome to Money manager app!</h1>
<c:choose>
    <c:when test="${sessionScope.user != null}">
        <div> Welcome <c:out value="${sessionScope.user}"/> </div>
        <form action="MainController" method="post">
        	<button type="submit" name="button" value="logout">Logout</button>
        </form>
    </c:when>    
    <c:otherwise>
	      <p> <br> Please <a href="login.jsp">login</a> or <a href="register.jsp">register</a> </p>
    </c:otherwise>
</c:choose>

</body>
</html>