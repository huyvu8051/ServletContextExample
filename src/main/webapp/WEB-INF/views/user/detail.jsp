<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<label for="name"> user id: </label>
	<c:out value="${user.userId	 }"></c:out>
	<br />
	<label for="name"> name: </label>
	<c:out value="${user.name }"></c:out>
	<br />
	<label for="email">email:</label>
	<c:out value="${user.email }"></c:out>
</body>
</html>