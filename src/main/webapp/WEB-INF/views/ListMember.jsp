<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Member</title>
</head>
<body>
	<h2>List Member</h2>

	<table border="1">
		<tr>
			<th>MemberName</th>
			<th>Age</th>
			<th>Profile</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${memberList}" var="m">

			<tr>
				<td>${m.memberName }</td>
				<td>${m.age}</td>
				<td>${m.profilePhoto }</td>
				<td><a href="viewmember?memberId=${m.memberId}">View</a> | <a href="deletemember?memberId=${m.memberId}">Delete</a> | Edit </td>
			</tr>
		</c:forEach>
	</table>





</body>
</html>