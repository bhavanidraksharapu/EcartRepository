<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script type="text/javascript">
function validate(huhu)
{
	var el=document.getElementById("err")
	//var un=document.getElementById("u").value;
	var un=huhu.value;
	if(un.length<5)
		el.innerHTML="KUCHKUCHUKU";
	else
		el.innerHTML="";
	//alert("Must contain 4 characters");
	}
</script>
</head>
<body>
<h3>Login</h3>
<h4> ${requestScope.err}</h4>
<h4>${requestScope.error}</h4>
<h4>${requestScope.e}</h4>
${rcp}
<form action="login" method="post" onsubmit="">
<input type="text" id="u" required="required" placeholder="Username" name="uname" onblur="validate(this)">
<br>
<input type="password" placeholder="password" name="upassword">
<br>
<input type="submit" value="Logo">
</form>
</body>
</html>