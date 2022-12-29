<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
welcome to E cart
<br>
<a href="myOrders">My Orders</a>
<a href="myProfile">My Profile</a>
<a href="viewcart">
<c:out value ="${cart.size()}" ></c:out> </a>

<c:if test="${empty uid}">
<a href="register?c=index">sign in</a>
</c:if>
<c:if test="${not empty uid}">
Welcome <c:out value="${uid}"></c:out><a href="logout">sign out</a>
</c:if>
<br>
<c:forEach var ="it" items="${prs}">
<a href="addToCart?id=${it.itemId}">add to cart</a>
<c:out value="${it.itemId}"></c:out>&nbsp;&nbsp;
<c:out value="${it.itemName}"></c:out>&nbsp;&nbsp;
<c:out value="${it.itemPrice}"></c:out>&nbsp;&nbsp;
<br>
<c:forEach items="${it.photo}" var="image">
<img src="Images/${it.itemId}/${image}" width="340" height="300"/>
</c:forEach>
<!--<img src="Images/${it.itemId}/${it.photo[i]}" width="340" height="300"/> -->
<!--<img src="data:image/jpg;base64,${it.photo}">-->
<br> 
</c:forEach>
</body>
</html>