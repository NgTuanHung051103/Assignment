<%-- 
    Document   : shop
    Created on : Aug 21, 2023, 10:12:34 PM
    Author     : ptkng
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Favicon -->
        <!--<link href="img/favicon.ico" rel="icon">-->
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/img/favicon-32x32.png">
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
                        <span id ="numberOfCart" class="badge">${requestScope.numberOfCart}</span>
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
<!--                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link" data-toggle="dropdown">Dresses <i class="fa fa-angle-down float-right mt-1"></i></a>
                                <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                    <a href="" class="dropdown-item">Men's Dresses</a>
                                    <a href="" class="dropdown-item">Women's Dresses</a>
                                    <a href="" class="dropdown-item">Baby's Dresses</a>
                                </div>
                            </div>-->
                            <a href="" class="nav-item nav-link">Quat</a>
                            <a href="" class="nav-item nav-link">Tu Lanh</a>
                            <a href="" class="nav-item nav-link">Tivi</a>
                            <a href="" class="nav-item nav-link">Dieu hoa</a>
<!--                            <a href="" class="nav-item nav-link">Sportswear</a>
                            <a href="" class="nav-item nav-link">Jumpsuits</a>
                            <a href="" class="nav-item nav-link">Blazers</a>
                            <a href="" class="nav-item nav-link">Jackets</a>
                            <a href="" class="nav-item nav-link">Shoes</a>-->
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
                                <a href="${pageContext.request.contextPath}/shop" class="nav-item nav-link active">Shop</a>
                               <c:set var = "MaSPdetail" value="${sessionScope.MaSPdetail}"/>
                               
                                <c:if test = "${MaSPdetail != null}">
                                    <a href="${pageContext.request.contextPath}/detailProduct?MaSP=${MaSPdetail}" class="nav-item nav-link">Shop Detail</a>
                                </c:if>
                                
                                
                                
                                                                
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
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
                                <img class="img-fluid" src="https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/09/banner/760x400-760x400-1.png" alt="Image">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                        <h3 class="display-4 text-white font-weight-semi-bold mb-4">Fashionable Dress</h3>
                                        <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item" style="height: 410px;">
                                <img class="img-fluid" src="https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/2023/08/banner/760-400-760x400.png" alt="Image">
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


        <!-- Page Header Start -->
        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Our Shop</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="">Home</a></p>
                    <p class="m-0 px-2">-</p>
                    <p class="m-0">Shop</p>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Shop Start -->
        <div class="container-fluid pt-5">
            <div class="row px-xl-5">
                <!-- Shop Sidebar Start -->
                <div class="col-lg-3 col-md-12">
                    <!-- Price Start -->
                    <div class="border-bottom mb-4 pb-4">
                        <h5 class="font-weight-semi-bold mb-4">Chọn mức giá</h5>
                        <form>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input type="checkbox" class="price custom-control-input" checked id="price-all" onclick = "check(this)">
                                <label class="custom-control-label" for="price-all">Tất cả</label>
                                <span class="badge border font-weight-normal">1000</span>
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input type="checkbox" class="price custom-control-input"  id="price-1" onclick = "check(this)">
                                <label class="custom-control-label" for="price-1">$0 - $100</label>
                                <span class="badge border font-weight-normal">150</span>
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input type="checkbox" class="price custom-control-input" id="price-2" onclick = "check(this)">
                                <label class="custom-control-label" for="price-2">$100 - $200</label>
                                <span class="badge border font-weight-normal">295</span>
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input type="checkbox" class="price custom-control-input"  id="price-3" onclick = "check(this)">
                                <label class="custom-control-label" for="price-3">$200 - $300</label>
                                <span class="badge border font-weight-normal">246</span>
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input type="checkbox" class="price custom-control-input"  id="price-4" onclick = "check(this)">
                                <label class="custom-control-label" for="price-4">$300 - $400</label>
                                <span class="badge border font-weight-normal">145</span>
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                                <input type="checkbox" class="price custom-control-input" id="price-5" onclick = "check(this)">
                                <label class="custom-control-label" for="price-5">$400 - $500</label>
                                <span class="badge border font-weight-normal">168</span>
                            </div>
                        </form>
                    </div>
                    <!-- Price End -->

                    <!-- Categories Start -->
                    <div class="border-bottom mb-4 pb-4">
                        <h5 class="font-weight-semi-bold mb-4">Chọn loại sản phẩm</h5>
                        <form>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input type="checkbox" class="category custom-control-input" checked id="category-all" onclick = "check(this)" >
                                <label class="custom-control-label" for="category-all">Tất cả</label>
                                <span class="badge border font-weight-normal">1000</span>
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input type="checkbox" class="category custom-control-input" id="category-1" onclick = "check(this)">
                                <label class="custom-control-label" for="category-1">Quạt</label>
                                <span class="badge border font-weight-normal">150</span>
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input type="checkbox" class="category custom-control-input" id="category-2" onclick = "check(this)">
                                <label class="custom-control-label" for="category-2">Điều Hòa</label>
                                <span class="badge border font-weight-normal">295</span>
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input type="checkbox" class="category custom-control-input" id="category-3" onclick = "check(this)">
                                <label class="custom-control-label" for="category-3">Tủ Lạnh</label>
                                <span class="badge border font-weight-normal">246</span>
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input type="checkbox" class="category custom-control-input" id="category-4" onclick = "check(this)">
                                <label class="custom-control-label" for="category-4">Tivi</label>
                                <span class="badge border font-weight-normal">145</span>
                            </div>
                        </form>
                    </div>
                    <!-- Categories End -->
                </div>
                <!-- Shop Sidebar End -->


                <!-- Shop Product Start -->
                <div class="col-lg-9 col-md-12">
                    <div class="row pb-3" id = "content">
<!--                        <div class="col-12 pb-1">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <form action="">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search by name">
                                    <div class="input-group-append">
                                        <span class="input-group-text bg-transparent text-primary">
                                            <i class="fa fa-search"></i>
                                        </span>
                                    </div>
                                </div>
                            </form>
                            <div class="dropdown ml-4">
                                <button class="btn border dropdown-toggle" type="button" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                            Sort by
                                        </button>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                                    <a class="dropdown-item" href="#">Latest</a>
                                    <a class="dropdown-item" href="#">Popularity</a>
                                    <a class="dropdown-item" href="#">Best Rating</a>
                                </div>
                            </div>
                        </div>
                    </div>-->
                        <c:forEach items="${requestScope.listByFilter}" var="o">
                      <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4" style="height: 90%;">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0"
                                    style = "height: 80%; display: flex; justify-content: center">
                                <img style ="object-fit: contain;" class="img-fluid w-100" src="${o.getImg()}" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">${o.getTenSP()}</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>${o.getGiaThanh()}VNÐ</h6><h6 class="text-muted ml-2"><del>${o.getGiaThanh()}VNÐ</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <!--<a href="detailProduct?MaSP=${o.getMaSP()}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>-->
                                <!--<a href=""onclick ="addToCart(${o.getMaSP()})" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>-->
                                <button onclick="detailProduct(${o.getMaSP()})" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary mr-1"></i>View Detail
                                </button>

                                <button onclick="addToCart(${o.getMaSP()})" class="btn btn-sm text-dark p-0">
                                     <i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart
                                </button>
                                
                            </div>
                        </div>
                    </div>
                        </c:forEach>
                        
<!--                        <div class="col-12 pb-1">
                            <nav aria-label="Page navigation">
                                <ul class="pagination justify-content-center mb-3">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>-->
                        </div>
                    
                    </div>
                </div>
                <!-- Shop Product End -->
            </div>
        </div>
        <!-- Shop End -->
        

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
                    <img class="img-fluid" src="" alt="">
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
            
            var arr_price = [1,0,0,0,0,0];
            var arr_category = [1,0,0,0,0];
//            input: the duoc click
            function check(tag) { 
                
//            classname: loai filter de xu ly: price, category
                var classname = tag.className.split(" ")[0];
                
//              arr: array cac the cung 1 loai filter
                var arr = document.getElementsByClassName(classname);
                
//                stt duoc tick trong 1 filter
                var index_selected;
                
//                luu mang danh sach stt cua filter
                var arr_index = [arr.length];
                
//                tim ra vi tri cua the duoc click trong array
//                gan vi tri vao bien index_selected
                for (var i = 0; i < arr.length; i++) {
                   if( tag.id == arr[i].id){
                     index_selected = i;
                   }
                }
                
//            neu la the 0 duoc chon: all -> xoa het tick cac the con lai
                if( index_selected == 0 ){
                    arr[index_selected].checked = true;
                    for (var i = 1; i < arr.length; i++) {
                        arr[i].checked = false;
                    }
                } else { // neu khac the 0: all -> xoa tick the 0
                    arr[0].checked = false;
                }
                
//               luu nhung tick vao arr_index: tick: 1, ko tick : 0
                for (var i = 0; i < arr.length; i++) {
                    if ( arr[i].checked == true ) {
                       arr_index[i] = 1;
                   } else {
                       arr_index[i] = 0;
                   }
                }
                
//                Truong hop: neu huy tick thi phai tick lai all
//              -> them property checked vao the all
//              -> arr_index tick: 1
                var check_clear_tick = 0;
                for(var i = 0; i < arr.length; i++){
                    if( arr_index[i] == 1 ){
                        check_clear_tick = 1;
                    }
                }
                if( check_clear_tick == 0 ){
                    arr_index[0] = 1;
                     arr[0].checked = true;
                }
                
                if ( classname == "price" ){
                    arr_price = arr_index;
                } else if ( classname == "category" ){
                    arr_category = arr_index;
                }
                load();
            }
            
                function load(){
                $.ajax({
                    url : "shop",
                    type : "post",
                    traditional: true,
//                    dataType:"text",
                    data : {
                        price : JSON.stringify(arr_price),
                         category : JSON.stringify(arr_category)
                    },
                    success : function (result){
                        var content =   document.getElementById("content");
                        content.innerHTML = "";
                         content.innerHTML += "" + result + "";
                    }
                });
            }
            
            
//            doan code sau dung de load more

//         bien nay dung de kiem tra xem co dang get data = ajax ko, neu = 1: co -> pause lai
            var is_busy = 0;
            
//         bien nay dung de kiem tra xem da het du lieu hay chua, neu = 1: het roi -> ko load nua
            var is_end = 0;
            $(document).ready(function(){
                $(window).scroll(function(){
                     $element = $('#content');
                    if( is_end === 0 && $(window).scrollTop() + $(window).height() >= $element.height()) {
                        
                        if( is_busy === 0){
                            
                            var count_sanpham_exist = document.getElementsByClassName("sanpham").length;
                            
                            is_busy = 1;
                            setTimeout(() => { 
                                $.ajax({
                                    url : "shopLoadMore",
                                    type : "post",
                                    traditional: true,
                //                    dataType:"text",
                                    data : {
                                        price : JSON.stringify(arr_price),
                                         category : JSON.stringify(arr_category),
                                         count : count_sanpham_exist
                                    },
                                    success : function (result){
                                        var content =   document.getElementById("content");
                                        if(result === ""){
                                            is_end = 1;
                                            return false;
                                        }
                                         content.innerHTML +=  result ;
                                    }
                                });
                                is_busy = 0;
                            }, 3000);
                        } else {
                            return false;
                        }
                    }
                });
            });
            
            
               function addToCart(MaSP){
                   
                $.ajax({
                    url: "addToCart",
                    type: "post",
                    traditional: true,
                    data:{
                        MaSP: MaSP
                    },
                    success: function (result){
                        var numberOfCart = document.getElementById("numberOfCart");
                        numberOfCart.innerHTML = "";
                        numberOfCart.innerHTML = result;
                    } 
                });
            }
            
            function detailProduct(maSP) {
                    window.location.href = "detailProduct?MaSP=" + maSP;
            }
            
        </script>
    </body>
</html>
