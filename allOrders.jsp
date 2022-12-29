

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
    <title>Amado - Furniture E-commerce Template | Admin</title>
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="style.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Orders</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    

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
                   <li><a href ="users">Users</a></li>
					<li><a href ="orders">Orders</a></li>
					<li><a href ="addItem.jsp">Add Item</a></li>
					<li><a href ="viewItems">View Items</a></li>
                </ul>
            </nav>           
            
        </header>
        <!-- Header Area End -->
       
                
      <div class="col-12 col-lg-8"> 	
<div class="p-3 m-0 border-0 bd-example">
<c:forEach var="ord" items="${allorders}">
    <div class="accordion" id="accordionExample">    
      <div class="accordion-item">
        <h2 class="accordion-header" id="headingOne">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${ord.orderid}" aria-expanded="false" aria-controls="collapseOne">           
								 <div class="cart-table clearfix">
                        
                            <table class="table table-responsive">
 <thead>
                                    <tr>
                                        <th>Order Id</th>
                                        <th>Total Amount</th>
                                        <th>Customer Name</th>
                                    </tr>
                                </thead>
								<tbody>
                                    <tr>
                                        <td class="cart_product_desc">
                                            <h5><c:out value ="${ord.orderid}"> </c:out></h5>
                                        </td>
                                        <td class="price">
                                         <c:out value ="${ord.totalamount}"></c:out>
                                        </td>
                                        <td class="qty">
                                            <div class="qty-btn d-flex">
                                                <div class="quantity">
                                               <c:out value ="${ord.customerId}"> </c:out>
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
                                    
          </button>
        </h2>    
        <div id="collapse${ord.orderid}" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
          <div class="accordion-body">
           <div class="cart-table clearfix">
                        
                            <table class="table table-responsive">
 <thead>
                                    <tr>
                                        <th>Item Id</th>
                                        <th>Item Name</th>
                                        <th>Item Price</th>
                                    </tr>
                                </thead>
                                
<c:forEach var="orderItems" items="${ord.orderItems}"> 
								<tbody>
                                    <tr>
                                        <td class="cart_product_desc">
                                            <h5><c:out value="${orderItems.itemId}"></c:out></h5>
                                        </td>
                                        <td class="price">
                                            <c:out value="${orderItems.itemName}"></c:out>
                                        </td>
                                        <td class="qty">
                                            <div class="qty-btn d-flex">
                                                <div class="quantity">
                                               <c:out value="${orderItems.itemPrice}"></c:out>
                                                   <%-- <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                    <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="1">
                                                    <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span> --%>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                    
        </c:forEach>
                                     </table>
                        </div>

 </div>
        </div>
      
      </div>
       
    </div> 
    </c:forEach>
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