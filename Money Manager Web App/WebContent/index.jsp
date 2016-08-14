<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<jsp:include page="header.jsp"/>
	<div class="container">
		<div class="row row-offcanvas row-offcanvas-right">
			<div class="col-xs-12 col-lg-12">
			<div class="page-header">
				<h1>Money Manager <small>personal finances made easy</small></h1>
			</div>
			<c:choose>
			    <c:when test="${sessionScope.user != null}">
			        <div> Welcome <c:out value="${sessionScope.user}"/> </div>
			        <form action="MainController" method="post">
			        	<button type="submit" name="button" value="logout">Logout</button>
			        </form>
			    </c:when>    
			    <c:otherwise>
				      <p align="center"> <br> Please <a href="login.jsp">login</a> or <a href="register.jsp">register</a> </p>
			    </c:otherwise>
			</c:choose>
			</div>
		</div>
	</div>
</body>
</html>