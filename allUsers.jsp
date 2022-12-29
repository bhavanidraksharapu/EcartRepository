<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Users</title>
</head>
<body>
<c:forEach var="allUsers" items="${users}">
<c:out value="${allUsers.userName}"></c:out>
<c:out value="${allUsers.password}"></c:out>
<c:out value="${allUsers.fullName}"></c:out>
<c:out value="${allUsers.emailId}"></c:out>
<c:out value="${allUsers.mobile}"></c:out>
<br>
</c:forEach>
</body>
</html>