<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
Welcome to ECart <a href="viewcart"><c:out value="${cart.size()}"></c:out></a>Item(s)
<a href ="login"> login </a><br><br>
<c:set var="total" value="${0}"></c:set>
<c:forEach var="pr" items="${cart}">
<c:out value ="${pr.itemName}"> </c:out> &nbsp; &nbsp;
<c:out value ="${pr.itemPrice}"> </c:out> &nbsp; &nbsp;
<c:out value ="${pr.quantity}"> </c:out> &nbsp; &nbsp;
<c:out value ="${pr.itemPrice*pr.quantity}"> </c:out>&nbsp; &nbsp;<br>
<c:set var="total" value="${total+pr.itemPrice*pr.quantity}"></c:set>
<br>
</c:forEach>
Total Amount <c:out value="${total}"></c:out>
<c:if test="${empty uid}">
<a href ="login?c=viewcart">Signin</a>
</c:if>
<c:if test="${not empty uid}">
<a href ="order">Place Order</a>
</c:if>
</body>
</html>