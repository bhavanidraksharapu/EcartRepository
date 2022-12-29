
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Title  -->
    <title>Amado - Furniture Ecommerce Template | Sign In</title>
    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">
    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="style.css">
  <style>
h6 {
  font-size: 12px;
}
</style>
</head>
<body>
    <!-- Search Wrapper Area Start -->
    <div class="search-wrapper section-padding-100">
        <div class="search-close">
            <i class="fa fa-close" aria-hidden="true"></i>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-content">
                        <form action="searchItem" method="get">
                            <input type="search" name="search" id="search" placeholder="Type your keyword...">
                            <button type="submit"><img src="img/core-img/search.png" alt=""></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Wrapper Area End -->
    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">
        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand">
                <a href="i.jsp"><img src="img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Navbar Toggler -->
            <div class="amado-navbar-toggler">
                <span></span><span></span><span></span>
            </div>
        </div>
        <!-- Header Area Start -->
        <header class="header-area clearfix">
            <!-- Close Icon -->
            <div class="nav-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <!-- Logo -->
            <div class="logo">
                <a href="i.jsp"><img src="img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
              		  <c:if test="${empty uid}">
                    <li><a href="login?c=index">Sign In</a></li>
                    </c:if>
                    <c:if test="${not empty uid}">
					Welcome <c:out value="${uid}"><br></c:out>
					</c:if>
                    <li><a href="index">Shop</a></li>
                    <li><a href="product-details.jsp">Product</a></li>
                    <li><a href="viewcart">Cart</a></li>
                     <c:if test="${not empty uid}">
					<li><a href="logout">Sign Out</a></li>
					</c:if>
                </ul>
            </nav>
            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="viewcart" class="cart-nav"><img src="img/core-img/cart.png" alt=""> Cart <span>(<c:out value ="${cart.size()}"></c:out>)</span></a>
                <a href="#" class="fav-nav"><img src="img/core-img/favorites.png" alt=""> Favourite</a>
                <a href="searchItem" class="search-nav"><img src="img/core-img/search.png" alt=""> Search</a>
            </div>
            <!-- Social Button -->
            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </header>
        <!-- Header Area End -->
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title">
                                <h2>Sign In</h2>
                            </div>
                            
                            <form action="login" method="post">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control" name="uname" value="" placeholder="User Name" required>
                                        <h6 style="color:Red;">${requestScope.err}</h6> 
                                        <h6 style="color:Red;">${requestScope.error}</h6> 
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control" name="upassword" value="" placeholder="Password" required>
                                    </div>
                                    
                            		                                 
                                    <div class="col-12">
                                        <input type="submit" value="Sign In">
                                     
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                <c:forEach var="pr" items="${cart}">
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>Cart Total</h5>
                            <ul class="summary-table">
                                <li><span>sub total:</span> <span><c:out value ="${pr.itemPrice*pr.quantity}"> </c:out></span></li>
                                <li><span>delivery:</span> <span>Free</span></li>
                                <li><span>total:</span> <span><c:out value ="${total+pr.itemPrice*pr.quantity}"> </c:out></span></li>
                            </ul>

                            <div class="payment-method">
                                <!-- Cash on delivery -->
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="cod" checked>
                                    <label class="custom-control-label" for="cod">Cash on Delivery</label>
                                </div>
                                <!-- Paypal -->
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="paypal">
                                    <label class="custom-control-label" for="paypal">Paypal <img class="ml-15" src="img/core-img/paypal.png" alt=""></label>
                                </div>
                            </div>

                            <div class="cart-btn mt-100">
                               <c:if test="${empty uid}">
								<a href ="login?c=viewcart">Sign In</a>
								</c:if>
								<c:if test="${not empty uid}">
								<a href ="order">Place Order</a>
								</c:if>
                            </div>
                        </div>
                    </div>
                      </c:forEach> 
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->

    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>

</body>

</html>