<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/menubar.css" type="text/css"/>
	<title>Home</title>
</head>

<body>
	<ul class="menu-bar">
  		<li style="float: left;"><a href="home.jsp" class="list-links">Home</a></li>
		<li class="dropdown-left">
			<a href="#home" class="list-links">New</a>
			<div class="dropdown-content-left">
  				<a href="#Category">Category</a>
  				<a href="#Set">Set</a>
  				<a href="#Page">Page</a>
  			</div>	
		</li>
		<li style="float: left;"><a href="options.jsp" class="list-links">Options</a></li>
  		<li class="dropdown-right">
  			<a href="#user" class="list-links"><c:out value="${session.Scope.username}"/></a>
  			<div class="dropdown-content-right">
  				<a href="usersetting.jsp">Settings</a>
  				<a href="goodby.jsp">Logout</a>
  			</div>
  		</li>  	
	</ul>
	
	<h1 style="font-size: 400%; text-align: center;"> OPTIONS PAGE! </h1>
</body>
</html>