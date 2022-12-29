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
    <title>Amado - Furniture Ecommerce Template | Product Details</title>

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
					Welcome <c:out value="${uid}"><br></c:out><a href="logout">sign out</a>
					</c:if>
                    <li><a href="index">Shop</a></li>
                    <li class="active"><a href="product-details.jsp">Product</a></li>
                    <li><a href="viewcart">Cart</a></li>       
                     <c:if test="${not empty uid}">
					<li><a href="logout">Sign Out</a></li>
					</c:if>
                </ul>
            </nav>
           
            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="viewcart" class="cart-nav"><img src="img/core-img/cart.png" alt=""> Cart <span><c:out value ="${cart.size()}"></c:out></span></a>
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
        
         <!-- Search product details start-->
        
         <!-- Search product details end-->
        <!-- Product Details Area Start -->
        <div class="single-product-area section-padding-100 clearfix">
        
                <c:forEach var="it" items="${item}">
            <div class="container-fluid">

                <div class="row">
               
                    <div class="col-12">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mt-50">
                                <li class="breadcrumb-item active" aria-current="page"><h6><c:out value="${it.itemName}"></c:out></li>
                            </ol>
                        </nav>
                    </div>
                </div>

                <div class="row">
                
                
                <div class="amado_product_area section-padding-100">
            <div class="container-fluid">
                <div class="row">.
                    <div class="col-12">
                        <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                                               
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-sm-6 col-md-12 col-xl-6">
                        <div class="single-product-wrapper">
                            <!-- Product Image -->             
                            <div class="product-img">
                                <img src="${it.img}" alt="">
                                <%-- Hover Thumb 
                                <img class="hover-img" src="${item.img}"alt="">--%>
                                
                            </div>
                            
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
                
             
                    <div class="col-12 col-lg-5">
                        <div class="single_product_desc">
                            <!-- Product Meta Data -->
                            <div class="product-meta-data">
                                <div class="line"></div>
                                <p class="product-price"><c:out value="${it.itemPrice}"></c:out></p>
                                <a href="product-details.jsp">
                                    <h6><c:out value="${it.itemName}"></c:out></h6>
                                </a>
                                
                                <!-- Avaiable -->
                                <p class="avaibility"><i class="fa fa-circle"></i> In Stock</p>
                            </div>

                            <div class="short_overview my-5">
                                <p>One piece of sweetness will make your mood enlighten</p>
                                 <p>Note(This chocolate cake is a vegan cake which contains less preservatives and made up of rich and homemade chocolate which makes it much more delicious)</p>
                            </div>
								<p>Get your cake now &#127773;</p>
                               <a href="addToCart?id=${it.itemId}"data-toggle="tooltip" data-placement="left" title="Add to Cart"><img src="img/core-img/cart.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
        <!-- Product Details Area End -->
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