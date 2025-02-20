<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h2>Login</h2>
	
	<form action="authenticate" method="post">
		Email :<input type="text" name="email"/><br><Br> 
		Password : <input type="password" name="password"/><br><br> 
		
		<input type="submit" value="Login"/>
	</form>
	
	
	${error}
	<br><br> 
	
	<a href="signup">Signup</a> 
	<a href="forgetpassword">ForgetPassword?</a> 
	
</body>
</html>