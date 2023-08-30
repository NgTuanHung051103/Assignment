<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8">
    <title>EShopper - Bootstrap Shop Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet: animation -->
        <link href="${pageContext.request.contextPath}/assets/owlcarousel/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="${pageContext.request.contextPath}/css/template/style.css" rel="stylesheet">
        
        <!-- Added Bootstrap Stylesheet -->
        <link href="${pageContext.request.contextPath}/css/template/added.css" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row bg-secondary py-2 px-xl-5">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark" href="">FAQs</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Help</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Support</a>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-dark pl-2" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for products">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-6 text-right">
                <a href="" class="btn border">
                    <i class="fas fa-heart text-primary"></i>
                    <span class="badge">0</span>
                </a>
                <a href="" class="btn border">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span class="badge">0</span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


 <!-- Navbar Start -->
        <div class="container-fluid mb-5">
            <div class="row border-top px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                        <h6 class="m-0">Categories</h6>
                        <i class="fa fa-angle-down text-dark"></i>
                    </a>
                    <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                        <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link" data-toggle="dropdown">Dresses <i class="fa fa-angle-down float-right mt-1"></i></a>
                                <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                    <a href="" class="dropdown-item">Men's Dresses</a>
                                    <a href="" class="dropdown-item">Women's Dresses</a>
                                    <a href="" class="dropdown-item">Baby's Dresses</a>
                                </div>
                            </div>
                            <a href="" class="nav-item nav-link">Shirts</a>
                            <a href="" class="nav-item nav-link">Jeans</a>
                            <a href="" class="nav-item nav-link">Swimwear</a>
                            <a href="" class="nav-item nav-link">Sleepwear</a>
                            <a href="" class="nav-item nav-link">Sportswear</a>
                            <a href="" class="nav-item nav-link">Jumpsuits</a>
                            <a href="" class="nav-item nav-link">Blazers</a>
                            <a href="" class="nav-item nav-link">Jackets</a>
                            <a href="" class="nav-item nav-link">Shoes</a>
                        </div>
                    </nav>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                        <a href="" class="text-decoration-none d-block d-lg-none">
                            <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="${pageContext.request.contextPath}/home" class="nav-item nav-link ">Home</a>
                                <a href="${pageContext.request.contextPath}/shop" class="nav-item nav-link ">Shop</a>
                               <c:set var = "MaSPdetail" value="${sessionScope.MaSPdetail}"/>
                                <c:if test = "${MaSPdetail != null}">
                                    <a href="${pageContext.request.contextPath}/detailProduct?MaSP=${MaSPdetail}" class="nav-item nav-link">Shop Detail</a>
                                </c:if>
                                
                                <div class="nav-item dropdown">
                                    <a href="" class="nav-link dropdown-toggle active" data-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="${pageContext.request.contextPath}/cart" class="dropdown-item">Shopping Cart</a>
                                        <a href="" class="dropdown-item">Checkout</a>
                                    </div>
                                </div>
                                <a href="" class="nav-item nav-link">Contact</a>
                            </div>



                            <c:set var ="cookie" value = "${sessionScope.cookies}"/>
                            <c:if test ="${cookie.loginedAccount == null }">
                                <div class="navbar-nav ml-auto py-0">
                                    <a href="${pageContext.request.contextPath}/view/user/homepage/login.jsp" class="nav-item nav-link">Login</a>
                                    <!--<a href="" class="nav-item nav-link">Register</a>-->
                                </div>
                            </c:if>
                            <c:if test ="${cookie.loginedAccount != null }">
                                <div class="navbar-nav ml-auto py-0">
                                        <a href="${pageContext.request.contextPath}/account">Tài Khoản</a>
                                        <a href="${pageContext.request.contextPath}/logoutServlet">Đăng Xuất</a>
                                </div>
                            </c:if>
                        </div>
                    </nav>
                    <div id="header-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active" style="height: 410px;">
                                <img class="img-fluid" src="${pageContext.request.contextPath}/images/carousel-1.jpg" alt="Image">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                        <h3 class="display-4 text-white font-weight-semi-bold mb-4">Fashionable Dress</h3>
                                        <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item" style="height: 410px;">
                                <img class="img-fluid" src="${pageContext.request.contextPath}/images/carousel-1.jpg" alt="Image">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                        <h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>
                                        <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                            <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                <span class="carousel-control-prev-icon mb-n2"></span>
                            </div>
                        </a>
                        <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                            <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                <span class="carousel-control-next-icon mb-n2"></span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar End -->

    <!-- Cart Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <c:set var = "size" value = "${requestScope.size}"/>

                        <!--GIO HANG KHONG CO GI-->
            <c:if test = "${size == 0}">
                <div style = "height: 200px;">Giỏ hàng không có gì, tiếp tục mua sắm</div>
            </c:if>
                
            <c:if test = "${size != 0}">
                  <div class="col-lg-8 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Products</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Remove</th>
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                        <c:forEach var = "order" items = "${requestScope.data}">
                            <c:set var="totalBill" value="${totalBill +order.getGiaThanh()*order.getSoLuong()}" />
                             <c:set var="totalProduct" value="${order.getGiaThanh()*order.getSoLuong()}" />
                            <!--MaSP-->
                            
                            <tr class ="sanpham" id ="sanpham${order.getSanPham().getMaSP()}" >
                                <td class="align-middle"><img src="${order.getSanPham().getImg()}" alt="" style="width: 50px;"> ${order.getSanPham().getTenSP()}</td>
                                <td class="align-middle">${order.getGiaThanh()}</td>
                                <td class="align-middle">
                                    <div class="input-group quantity mx-auto" style="width: 100px;">
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-primary btn-minus" >
                                                <i class="fa fa-minus"></i>
                                            </button>
                                         </div>
                                        <input type="text" class="form-control form-control-sm bg-secondary text-center soluong" 
                                                value="${order.getSoLuong()}" min ="1" max ="10" name = "quantity" >
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-primary btn-plus">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                                <td class="align-middle" name ="totalProduct" >${totalProduct}</td>
                                <td class="align-middle">
                                    <button class="btn btn-sm btn-primary" onclick ="confirmDelete('${order.getSanPham().getMaSP()}');">
                                        <i class="fa fa-times"></i></button>
                                </td>
                                <td hidden class = "special-feature">
                                    <input type="text"  name = "giathanh" class="giathanh" value="${order.getSanPham().getGiaThanh()}" >
                                    <input type="text"  name = "MaSP" class="MaSP" value="${order.getSanPham().getMaSP()}" >
                                </td>
                            </tr>
                            
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-4">
                <form class="mb-5" action="">
                    <div class="input-group">
                        <input type="text" class="form-control p-4" placeholder="Coupon Code">
                        <div class="input-group-append">
                            <button class="btn btn-primary">Apply Coupon</button>
                        </div>
                    </div>
                </form>
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Subtotal</h6>
                            <h6 class="font-weight-medium" name = "totalBill">${totalBill}</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Shipping</h6>
                            <h6 class="font-weight-medium">$10</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Total</h5>
                            <h5 class="font-weight-bold" name = "totalBillShip">${totalBill + 10000}</h5>
                        </div>
                        <button class="btn btn-block btn-primary my-3 py-3" name="updatecart" >Calculate</button>
                        <form action ="checkOut" method ="GET" id ="checkOut" >
                            <button class="btn btn-block btn-primary my-3 py-3" name ="checkOut">Proceed To Checkout</button>
                        </form>
                        
                    </div>
                </div>
            </div>
            </c:if>   
          
        </div>
    </div>
    <!-- Cart End -->


    <!-- Footer Start -->
    <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <a href="" class="text-decoration-none">
                    <h1 class="mb-4 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border border-white px-3 mr-1">E</span>Shopper</h1>
                </a>
                <p>Dolore erat dolor sit lorem vero amet. Sed sit lorem magna, ipsum no sit erat lorem et magna ipsum dolore amet erat.</p>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York, USA</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4 mb-5">
                        <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-dark mb-2" href="index.html"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-dark mb-2" href="shop.html"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                            <a class="text-dark mb-2" href="detail.html"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                            <a class="text-dark mb-2" href="cart.html"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                            <a class="text-dark mb-2" href="checkout.html"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                            <a class="text-dark" href="contact.html"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-dark mb-2" href="index.html"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-dark mb-2" href="shop.html"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                            <a class="text-dark mb-2" href="detail.html"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                            <a class="text-dark mb-2" href="cart.html"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                            <a class="text-dark mb-2" href="checkout.html"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                            <a class="text-dark" href="contact.html"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="font-weight-bold text-dark mb-4">Newsletter</h5>
                        <form action="">
                            <div class="form-group">
                                <input type="text" class="form-control border-0 py-4" placeholder="Your Name" required="required" />
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control border-0 py-4" placeholder="Your Email"
                                    required="required" />
                            </div>
                            <div>
                                <button class="btn btn-primary btn-block border-0 py-3" type="submit">Subscribe Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row border-top border-light mx-xl-5 py-4">
            <div class="col-md-6 px-xl-0">
                <p class="mb-md-0 text-center text-md-left text-dark">
                    &copy; <a class="text-dark font-weight-semi-bold" href="#">Your Site Name</a>. All Rights Reserved. Designed
                    by
                    <a class="text-dark font-weight-semi-bold" href="https://htmlcodex.com">HTML Codex</a><br>
                    Distributed By <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                </p>
            </div>
            <div class="col-md-6 px-xl-0 text-center text-md-right">
                <img class="img-fluid" src="img/payments.png" alt="">
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
        <!--<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/easing/easing.min.js"></script>

        <script src="${pageContext.request.contextPath}/assets/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <!--        <script src="mail/jqBootstrapValidation.min.js"></script>
                <script src="mail/contact.js"></script>-->

        <!-- Template Javascript -->
        <script src="${pageContext.request.contextPath}/js/template/main.js"></script>
        
        <script>
//        Confirm Delete product

            function confirmDelete(MaSP) {
                if (confirm("Are you sure you want to remove this item?")) {
                    $.ajax({
                        url: "deleteCart",
                        type: "get",
                        traditional: true,
                        data: {
                            MaSP: MaSP
                        },
                        success: function () {
                            var tr = document.getElementById('sanpham' + MaSP);
                            tr.remove();
                        }
                    });
                } else {
                    return false;
                }
            }
        
        
        var btn_update = document.getElementsByName("updatecart")[0];
       btn_update.onclick = () => {
            var cart = "";
            var temp = "${size}";
            var cart_count = parseInt(temp);
            for( var i = 0; i < cart_count; i++ ){
                try{
                    var productid = document.getElementsByName("MaSP")[i].value;
                    var quantity = parseInt(document.getElementsByName("quantity")[i].value);
                   if ( productid != "" && productid != undefined && quantity != "" && quantity != undefined ) {
                        cart += productid + ":" + quantity + "/";
                    } else {
                        break;
                    }
                } catch (error) {
                    break;
              }
            } 
            cart = cart.substring(0, cart.length-1);
            
            var ArrtotalProduct = document.getElementsByName("totalProduct");
            var Arrquantity = document.getElementsByName("quantity");   
            var Arrgiathanh = document.getElementsByName("giathanh");

            temp = 0;
            var totalBill = document.getElementsByName("totalBill")[0];
            var totalBillShip = document.getElementsByName("totalBillShip")[0];

            for( var i = 0; i < ArrtotalProduct.length; i++ ){
                  var quantity = parseInt(Arrquantity[i].value);
                  var giathanh = parseInt(Arrgiathanh[i].value);
                  ArrtotalProduct[i].innerHTML = quantity * giathanh;
                  temp += quantity * giathanh;
            }   
            totalBill.innerHTML = temp;
            totalBillShip.innerHTML = temp + 10000;
            
             $.ajax({
                    url: "updateCart",
                    type: "get",
                    traditional: true,
                    data:{
                        txt_cart : cart
                    },
                    success: function (result){
                    } 
                });
        };
        
         var btn_checkOut = document.getElementsByName("checkOut")[0];
        btn_checkOut.onclick = () => {
             var order_txt = "";
            var order_count =   document.getElementsByName("totalProduct").length ;
           for( var i = 0; i < order_count; i++ ){
                try{
                    var productid = document.getElementsByName("MaSP")[i].value;
                    var quantity = parseInt(document.getElementsByName("quantity")[i].value);
                   if ( productid != "" && productid != undefined && quantity != "" && quantity != undefined ) {
                        order_txt += productid + ":" + quantity + "/";
                    } else {
                        break;
                    }
                } catch (error) {
                    break;
              }
            } 
             var cartCheckOut = document.createElement("input");
            cartCheckOut.setAttribute("type", "hidden");
            cartCheckOut.setAttribute("name", "order_txt");
            cartCheckOut.setAttribute("value", order_txt.substring(0, order_txt.length-1));
            
             var form = document.getElementById("checkOut");
             
             form.appendChild(cartCheckOut);
             form.submit();
            
        }
        
        
        
        </script>
</body>

</html>