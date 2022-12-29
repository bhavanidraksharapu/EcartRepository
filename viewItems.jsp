<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Items</title>
</head>
<body>
<c:forEach var="prod" items="${pro}">
<a href="addImage?id=${prod.itemId}">Add Image</a>
<c:forEach items="${prod.photo}" var="image">
<img src="Images/${prod.itemId}/${image}" width="340" height="300"/>
<a href="deleteImage?declare=delete&photo=${image}&itemId=${prod.itemId}">Delete Image</a>
</c:forEach>
<c:out value="${prod.itemId}"></c:out>
<c:out value="${prod.itemName}"></c:out>
<c:out value="${prod.itemPrice}"></c:out>
</c:forEach>
</body>
</html>
