
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
</head>
<body>
	<form action="/ServletContextExample/user" method="post">
		<label for="name"> name: </label> <input type="text" id="name"
			name="name" value=""> <label for="email">email:</label> <input
			type="text" id="email" name="email" value=""> <input
			type="submit" value="Submit">
	</form>
</body>
</html>