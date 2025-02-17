<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Member</title>
</head>
<body>

<form action="savemember" method="post">
	Member Name: <input type="text" name="memberName"/><br><br> 
	Age : <input type="text" name="age"/><br><br> 
	ProfilePhot : <input type="file" name="profilePhoto"/><br><br> 
	
	<input type="submit" value="Save Member"/>

</form>

</body>
</html>