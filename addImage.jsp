<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Image</title>
</head>
<body>
<form action="addImage" method="post" enctype="multipart/form-data">
<input type="text" disabled="disabled" name="id" value="${param.id}">
<input type="file" placeholder="file" name="image">
<input type="submit" value="add">
</form>
</body>
</html>