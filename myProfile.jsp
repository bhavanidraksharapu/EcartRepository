<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My profile</title>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<c:out value="${profile.userName}"></c:out>
<c:out value="${profile.emailId}"></c:out>
<c:out value="${profile.mobile}"></c:out>
<div class="p-3 m-0 border-0 bd-example">
    <div class="dropdown">
      <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
        My Profile
      </button>
      <ul class="dropdown-menu" style="">
        <li><a class="dropdown-item" href="#"><c:out value="${profile.userName}"></c:out></a></li>
        <li><a class="dropdown-item" href="#"><c:out value="${profile.emailId}"></c:out></a></li>
        <li><a class="dropdown-item" href="#"><c:out value="${profile.mobile}"></c:out></a></li>
      </ul>
    </div>
    </div>
   
            <nav class="amado-nav">
            <ul>      
                    <li><a href="myOrders">My Orders</a></li>
   </ul>
</nav>

</body>
</html>