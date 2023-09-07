<%-- 
    Document   : product
    Created on : 04/06/2023, 5:16:18 PM
    Author     : NgTua
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/img/favicon-32x32.png">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Featured Start -->
        <div class="container-fluid pt-5">
            <div class="row px-xl-5 pb-3">
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                        <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Featured End -->

        <!-- Categories Start -->
        <div class="container-fluid pt-5">
            <div class="row px-xl-5 pb-3">
                <div class="col-lg-3 col-md-6 pb-1">
                    <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px; height: 100%">
                        <p class="text-right">15 Products</p>
                        <a style = "height: 76%; display: flex; justify-content: center;"href="" class="cat-img position-relative overflow-hidden mb-3">
                            <img style ="object-fit: contain"  class="img-fluid" src="${pageContext.request.contextPath}/images/quat.jpg" alt="">
                        </a>
                        <h5 class="font-weight-semi-bold m-0">Quạt</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 pb-1">
                    <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height: 100%">
                        <p class="text-right">15 Products</p>
                        <a  style = "height: 76%; display: flex; justify-content: center;" href="" class="cat-img position-relative overflow-hidden mb-3">
                            <img style ="object-fit: contain"  class="img-fluid" src="${pageContext.request.contextPath}/images/maylanh.jpg" alt="">
                        </a>
                        <h5 class="font-weight-semi-bold m-0">Điều Hòa</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 pb-1">
                    <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height: 100%">
                        <p class="text-right">15 Products</p>
                        <a style = "height: 76%; display: flex; justify-content: center;" href="" class="cat-img position-relative overflow-hidden mb-3">
                            <img style ="object-fit: contain" class="img-fluid" src="${pageContext.request.contextPath}/images/tulanh.jpg" alt="">
                        </a>
                        <h5 class="font-weight-semi-bold m-0">Tủ Lạnh</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 pb-1">
                    <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height: 100%">
                        <p class="text-right">15 Products</p>
                        <a  style = "height: 76%; display: flex; justify-content: center;" href="" class="cat-img position-relative overflow-hidden mb-3">
                            <img style ="object-fit: contain"  class="img-fluid" src="${pageContext.request.contextPath}/images/tivi.jpg" alt="">
                        </a>
                        <h5 class="font-weight-semi-bold m-0">Tivi</h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Categories End -->

        <!-- Offer Start -->
<!--        <div class="container-fluid offer pt-5">
            <div class="row px-xl-5">
                <div class="col-md-6 pb-4">
                    <div class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5">
                        <img src="${pageContext.request.contextPath}/images/offer-1.png" alt="">
                        <div class="position-relative" style="z-index: 1;">
                            <h5 class="text-uppercase text-primary mb-3">20% off the all order</h5>
                            <h1 class="mb-4 font-weight-semi-bold">Spring Collection</h1>
                            <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 pb-4">
                    <div class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5">
                        <img src="${pageContext.request.contextPath}/images/offer-1.png" alt="">
                        <div class="position-relative" style="z-index: 1;">
                            <h5 class="text-uppercase text-primary mb-3">20% off the all order</h5>
                            <h1 class="mb-4 font-weight-semi-bold">Winter Collection</h1>
                            <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- Offer End -->

        <!-- Products Start -->
        <div class="container-fluid pt-5">
            <div class="text-center mb-4">
                <h2 class="section-title px-5"><span class="px-2">Trandy Products</span></h2>
            </div>
            <div class="row px-xl-5 pb-3">
                <c:forEach items="${requestScope.listTrandy}" var="o">
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
            </div>

        </div>
        <script>
            
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
