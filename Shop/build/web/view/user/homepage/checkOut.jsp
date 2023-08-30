<%-- 
    Document   : checkOut
    Created on : Jul 7, 2023, 1:26:27 PM
    Author     : ptkng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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

        <style>
            .error {
                color: red;
            }

        </style>
        <title>JSP Page</title>
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
                    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
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
                                    <a href="#" class="nav-link dropdown-toggle active" data-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="${pageContext.request.contextPath}/cart" class="dropdown-item">Shopping Cart</a>
                                        <a href="" class="dropdown-item active">Checkout</a>
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

                </div>
            </div>
            <!-- Navbar End -->


            <!-- Page Header Start -->
            <div class="container-fluid bg-secondary mb-5">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                    <h1 class="font-weight-semi-bold text-uppercase mb-3">Checkout</h1>
                    <div class="d-inline-flex">
                        <p class="m-0"><a href="">Home</a></p>
                        <p class="m-0 px-2">-</p>
                        <p class="m-0">Checkout</p>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->

            <!-- Checkout Start -->
            <div class="container-fluid pt-5">
                <form action ="thanhtoan" method ="POST" id ="thanhtoanForm" >
                    <div class="row px-xl-5">

                        <div class="col-lg-8">

                            <!--THONG TIN KHACH HANG-->

                            <c:set var="user" value="${requestScope.user}" />
                            <div class="mb-4">
                                <h4 class="font-weight-semi-bold mb-4">Billing Address</h4>
                                <div class="row">
                                    <div class="form-group" style = "display: none">
                                        <label for="">ID: </label>
                                        <input type="text"name="ID" value = "${user.getID()}" >
                                    </div>
                                    <div class="form-group" style = "display: none">
                                        <label for="">order_txt </label>
                                        <input type="text"name="order_txt" value = "${requestScope.txt}" >
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label>Name</label>
                                        <input class="form-control" type="text" name="nameInput" value = "${user.getTen()}">
                                        <div id="nameError" class="error"></div>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label>E-mail</label>
                                        <input class="form-control" type="text"name="EmailInput"  value = "${user.getEmail()}">
                                        <div id="EmailError" class="error"></div>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label>Mobile No</label>
                                        <input class="form-control" type="text"  name="SDTInput" value = "${user.getSDT()}">
                                        <div id="SDTError" class="error"></div>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label>Address Line 1</label>
                                        <input class="form-control" type="text" name="DiaChiInput" value = "${user.getDiaChi()}">
                                        <div id="DiaChiError" class="error"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="collapse mb-4" id="bank-transfer">
                                <h4 class="font-weight-semi-bold mb-4">QR</h4>
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <img id = "QR"class="QR" src="${pageContext.request.contextPath}/images/QR.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--THONG TIN ORDER-->
                        <div class="col-lg-4">
                            <div class="card border-secondary mb-5">
                                <div class="card-header bg-secondary border-0">
                                    <h4 class="font-weight-semi-bold m-0">Order Total</h4>
                                </div>
                                <div class="card-body">
                                    <h5 class="font-weight-medium mb-3">Products</h5>
                                    <c:forEach var = "order" items = "${requestScope.data}">
                                        <c:set var="total" value="${total +order.getGiaThanh()*order.getSoLuong()}" />

                                        <div class="d-flex justify-content-between">
                                            <p >${order.getSanPham().getTenSP()}</p>
                                            <p>${order.getGiaThanh() *  order.getSoLuong()}</p>
                                        </div>

                                    </c:forEach>

                                    <hr class="mt-0">
                                    <div class="d-flex justify-content-between mb-3 pt-1">
                                        <h6 class="font-weight-medium">Subtotal</h6>
                                        <h6 class="font-weight-medium">${total}</h6>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                        <h6 class="font-weight-medium">Shipping</h6>
                                        <h6 class="font-weight-medium">10000</h6>
                                    </div>
                                </div>
                                <div class="card-footer border-secondary bg-transparent">
                                    <div class="d-flex justify-content-between mt-2">
                                        <h5 class="font-weight-bold">Total</h5>
                                        <h5 class="font-weight-bold">${total + 10000}</h5>
                                    </div>
                                </div>
                            </div>

                            <!--HINH THUC THANH TOAN-->
                            <div class="card border-secondary mb-5">
                                <div class="card-header bg-secondary border-0">
                                    <h4 class="font-weight-semi-bold m-0">Payment</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <div class="custom-control custom-radio">
                                            <input type="checkbox" value = "1" class="custom-control-input" name="hinhthucthanhtoan" id="directcheck">
                                            <label class="custom-control-label" for="directcheck">Direct Check</label>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="custom-control custom-radio">
                                            <input type="checkbox" value = "2"  class="custom-control-input" name="hinhthucthanhtoan" id="banktransfer">
                                            <label class="custom-control-label" for="banktransfer" data-toggle="collapse" data-target="#bank-transfer">Bank Transfer</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer border-secondary bg-transparent">
                                    <button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3" id = "placeOrder" onclick="validateForm()">Place Order</button>
                                    <input type = "text" value ="${total}" name = "TotalPrice" style ="display: none">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <!-- Checkout End -->

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
                                        //        CODE HIEN THI MAQR
                                        //        httt: hinhthucthanhtoan
                                        var httt = document.getElementById("hinhthucthanhtoan");

                                        httt.addEventListener("change", function () {

                                            //                get value of selected tag
                                            var selectedhttt = httt.value;
                                            // Check if the selected category requires color and material inputs
                                            if (parseInt(selectedhttt) === 2) {
                                                // Show the color and material inputs
                                                (document.getElementById("QR").parentElement).style.display = "block";
                                            } else {
                                                (document.getElementById("QR").parentElement).style.display = "none";
                                            }
                                        });

                                        var btn_placeOrder = document.getElementById("placeOrder");


                                        //        CODE DE Nhap full thong tin neu thieu
                                        function validateForm() {
                                            let name = $('#nameInput').val();
                                            let SDT = $('#SDTInput').val();
                                            let Email = $('#EmailInput').val();
                                            let DiaChi = $('#DiaChiInput').val();

                                            //          xoá thông báo loi hien tai: goi den class
                                            $('.error').html('');

                                            if (name === '') {
                                                $('#nameError').html('VUI LONG NHAP TEN');
                                            }

                                            if (SDT === '') {
                                                $('#SDTError').html('VUI LONG NHAP SO DIEN THOAI ');
                                            }

                                            if (Email === '') {
                                                $('#EmailError').html('VUI LONG NHAP Email');
                                            }

                                            if (DiaChi === '') {
                                                $('#DiaChiError').html('VUI LONG NHAP DIA CHI ');
                                            }

                                            // Kiểm tra nếu không có lỗi thì submit form
                                            let error = '';
                                            $('.error').each(function () {
                                                error += $(this).html();
                                            });
                                            if (error === '') {
                                                window.location.href = "thanhtoan";
                                            } else {
                                                event.preventDefault();
                                            }
                                        }
            </script>



</html>
