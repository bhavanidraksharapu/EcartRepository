<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<h3> Register page </h3><br> <br>
<h4>${requestScope.errr}</h4>
<h4>${requestScope.error}</h4>
<form action="register" method="post">
<input type="text" placeholder="name" value ="${param.username} " name="uname">
<input type="password" placeholder="password" name="upassword">
<input type="text" placeholder="mailId" value ="${param.email}" name="umailid">
<input type="text" placeholder="mobile no" value ="${param.mobile}"  name="umobileno"> 
<input type="submit" value="Register">
</form>
</body>
</html>