<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<title>List</title>
</head>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 50%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
<body>
	<table>
		<tr>
			<th>userId</th>
			<th>name</th>
			<th>email</th>
			<th>action</th>
		</tr>


		<c:forEach var="item" items="${blogUsers}">
			<tr>
				<td><a href="<c:url value="user/detail?id=${item.userId}"></c:url>"><c:out
							value="${item.userId }"></c:out></a></td>
				<td><c:out value="${item.name }"></c:out></td>
				<td><c:out value="${item.email }"></c:out></td>
				
				<td><a href="<c:url value="user/edit?id=${item.userId}"></c:url>">edit</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>