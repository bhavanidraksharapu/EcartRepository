
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
    <title>Amado - Furniture Ecommerce Template | Cart</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="style.css">

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
					Welcome <c:out value="${uid}"></c:out>
					</c:if>
                    <li><a href="index">Shop</a></li>
                    <li><a href="product-details.jsp">Product</a></li>
                    <li class="active"><a href="viewcart">Cart</a></li>
                     <c:if test="${not empty uid}">
					<li><a href="logout">Sign Out</a></li>
					</c:if>
                </ul>
            </nav>
          
            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="viewcart" class="cart-nav"><img src="img/core-img/cart.png" alt="">Cart<span>(<c:out value ="${cart.size()}"></c:out>)</span></a>
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
                
                <c:forEach var="pr" items="${cart}">
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50">
                            <h2>Shopping Cart</h2>
                        </div>

                        <div class="cart-table clearfix">
                        
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                    <tr>
                                    
                                        <td class="cart_product_img">
                                           <img src="${pr.image}" alt="Product">
                                            </td>
                                           
                                        
                                        <td class="cart_product_desc">
                                            <h5><c:out value ="${pr.itemName}"> </c:out></h5>
                                        </td>
                                        <td class="price">
                                            <span><c:out value ="${pr.itemPrice}"></c:out></span>
                                        </td>
                                        <td class="qty">
                                            <div class="qty-btn d-flex">
                                                <p>Qty</p>
                                                <div class="quantity">
                                               <span> <c:out value ="${pr.quantity}"> </c:out> </span>
                                                   <%-- <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                    <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="1">
                                                    <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span> --%>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                  
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>Cart Total</h5>
                            <ul class="summary-table">
                            
                                <li><span>subtotal:</span> <span><c:out value ="${pr.itemPrice*pr.quantity}"> </c:out></span></li>
                                <li><span>delivery:</span> <span>Free</span></li>
                                <li><span>total:</span> <span>
<c:out value ="${pr.itemPrice*pr.quantity}"> </c:out>&nbsp; &nbsp;<br></li>
<c:set var="total" value="${total+pr.itemPrice*pr.quantity}"></c:set></span>
                            </ul>
                            
                         
                        </div>
                    </div>
                     </c:forEach>
                      <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                    <div class="cart-btn mt-100">
Total Amount <c:out value="${total}"></c:out>
                            	<c:if test="${empty uid}">
								<a href ="login?c=viewcart">Sign In</a>
								</c:if>
								<c:if test="${not empty uid}">
								<a href ="order"><button type="button">Place Order</button></a>
								</c:if>
                            </div>
                            </div>
                            </div>
                               
                                
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