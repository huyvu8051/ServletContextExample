<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
</head>
<body>
	<form action="/ServletContextExample/user/edit" method="post">
		<label for="name"> userId: </label> <input type="text" id="userId"
			name="userId" value="${user.userId}"> <label for="name"> name: </label> <input
			type="text" id="name" name="name" value="${user.name}"> <label
			for="email">email:</label> <input type="text" id="email" name="email"
			value="${user.email}"> <input type="submit" value="Submit">
	</form>
</body>
</html>