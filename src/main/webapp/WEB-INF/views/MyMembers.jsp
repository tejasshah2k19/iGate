<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<table border="1">
		<tr>
			<th>MemberId</th>
			<th>MemberName</th>
			<th>Age</th>
			<th>User FirstName</th>
			<th>User LastName</th>
		</tr>

		<c:forEach items="${allMember}" var="m">
			<tr>
				<td>${m[0]}</td>
				<td>${m[1]}</td>
				<td>${m[2]}</td>
				<td>${m[3]}</td>
				<td>${m[4]}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>

