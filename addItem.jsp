<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Item</title>
</head>
<body>
<form action="fileUpload" method="post" enctype="multipart/form-data">
<input type="text" placeholder="Item Name" name="itemName">
<br>
<input type="text" placeholder="Item Price" name="itemPrice">
<br>
<input type="file" placeholder="File" name="photo">
<br>
<input type="submit" value="add">
</form>
</body>
</html>