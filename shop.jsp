<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Amado - Furniture E-commerce Template | Shop</title>
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
      <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .gfg {
            margin: 3%;
            position: relative;
        }
  
        .first-txt {
            position: absolute;
            top: 19px;
            left: 28px;
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
                    <li class="active"><a href="index">Shop</a></li>
                    <li><a href="product-details.jsp">Product</a></li>
                    <li><a href="viewcart">Cart</a></li>   
                      <c:if test="${not empty uid}">
					<li><a href="logout">Sign Out</a></li>
					</c:if>
					
                </ul>
            </nav>            
            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="viewcart" class="cart-nav"><img src="img/core-img/cart.png" alt="">Cart <span>(<c:out value="${cart.size()}"></c:out>)</span></a>
                <a href="#" class="fav-nav"><img src="img/core-img/favorites.png" alt="">Favourite</a>
                <a href="searchItem" class="search-nav"><img src="img/core-img/search.png" alt="">Search</a>
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

        <div class="amado_product_area section-padding-100">
            <div class="container-fluid">
                <div class="row">.
                    <div class="col-12">
                        <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                                               
                        </div>
                    </div>
                </div>

                <div class="row">
                <c:forEach var="item" items="${prs}">
                  
                    <div class="col-12 col-sm-6 col-md-12 col-xl-6">
                        <div class="single_product_thumb">
                            <div id="product_details_slider" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li class="active" data-target="#product_details_slider" data-slide-to="0"  style="background-image: url(<img src="${item.image}" alt="">)">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="1" style="background-image: url(<img src="${item.img}"  alt="">);">
                                    </li>
                                   
                                </ol>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <a class="gallery_img" href="${item.image}">
                                            <img class="d-block w-100" src="${item.image}" width="340" height="300" alt="First slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="${item.img}">
                                            <img class="d-block w-100" src="${item.img}" width="340" height="300" alt="Second slide">
                                        </a>
                                    </div>
                                  
                                </div>
                            </div>
                            <div class="single-product-wrapper">
                            <div class="product-description d-flex align-items-center justify-content-between">
                                <!-- Product Meta Data -->
                                <div class="product-meta-data">
                                    <div class="line"></div>
                                    <p class="product-price"><c:out value="${item.itemPrice}"></c:out></p>
                                    <a href="product-details.jsp">
                                        <h6><c:out value="${item.itemName}"></c:out></h6>
                                    </a>
                                </div>
                                <!--  Cart -->
                                <div class="cart text-right">                                 
                                    <div class="cart">
                                        <a href="addToCart?id=${item.itemId}"data-toggle="tooltip" data-placement="left" title="Add to Cart"><img src="img/core-img/cart.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    
                  
               <%--      <div class="col-12 col-sm-6 col-md-12 col-xl-6">
                        <div class="single-product-wrapper">
                            <!-- Product Image -->             
                            <div class="product-img">
                                <img src="${item.image}" alt="">
                                <img class="hover-img" src="${item.img}"alt="">
                                
                            </div>
                            <!-- Product Description -->
                            <div class="product-description d-flex align-items-center justify-content-between">
                                <!-- Product Meta Data -->
                                <div class="product-meta-data">
                                    <div class="line"></div>
                                    <p class="product-price"><c:out value="${item.itemPrice}"></c:out></p>
                                    <a href="product-details.jsp">
                                        <h6><c:out value="${item.itemName}"></c:out></h6>
                                    </a>
                                </div>
                                <!--  Cart -->
                                <div class="cart text-right">                                 
                                    <div class="cart">
                                        <a href="addToCart?id=${item.itemId}"data-toggle="tooltip" data-placement="left" title="Add to Cart"><img src="img/core-img/cart.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--%>

                    				</c:forEach>
                </div>

               
            </div>
        </div>
<div style="position: relative; width: 250px;">
  <div style="position: absolute; top: 40px; right:0; width: 80px; text-align:right; ">
   <div class="gfg">
          <a href="myProfile" ><img src="img/gfg.jpg"></a>
        <h3 class="first-txt">
          <c:if test="${not empty uid}">
          <c:set var="username" value="${uid}"></c:set>
					 ${fn:substring(username,1,2)}
					</c:if>
        </h3>
    </div>
 </div>
    </div>
      <body class="p-3 m-0 border-0 bd-example">

    <!-- Example Code -->
    
    <div class="btn-group">
      <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
        Dropdown
      </button>
      <ul class="dropdown-menu" style="">
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
      </ul>
    </div>
    
    <div class="btn-group">
      <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        Right-aligned menu
      </button>
      <ul class="dropdown-menu dropdown-menu-end" style="">
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
      </ul>
    </div>
    
    <div class="btn-group">
      <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
        Left-aligned, right-aligned lg
      </button>
      <ul class="dropdown-menu dropdown-menu-lg-end">
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
      </ul>
    </div>
    
    <div class="btn-group">
      <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
        Right-aligned, left-aligned lg
      </button>
      <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start">
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
      </ul>
    </div>
    
    <div class="btn-group dropstart">
      <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        Dropstart
      </button>
      <ul class="dropdown-menu" style="">
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
      </ul>
    </div>
    
    <div class="btn-group dropend">
      <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        Dropend
      </button>
      <ul class="dropdown-menu" style="">
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
      </ul>
    </div>
    
    <div class="btn-group dropup">
      <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        Dropup
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
        <li><a class="dropdown-item" href="#">Menu item</a></li>
      </ul>
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