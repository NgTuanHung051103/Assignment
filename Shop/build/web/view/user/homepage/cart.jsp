<%-- 
    Document   : datatableProduct
    Created on : 17/06/2023, 11:07:21 PM
    Author     : NgTua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!--css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/homepage/cart.css">

        <!--boostrap-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

        <!--css Duc-->
        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


        <title>JSP Page</title>
    </head>  
        
        <!-- Navbar-->
        <jsp:include page="../../common/homepage/navbar.jsp" ></jsp:include>      
    
        <section class="shopping-cart dark" style = "margin-top: 8px;">
            <div class="container">
                <div class="block-heading">
                    <h2>Shopping Cart</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quam urna, dignissim nec auctor in, mattis vitae leo.</p>
                </div>
                <div class="content">
                    <div class="row">

                        <c:set var = "size" value = "${requestScope.size}"/>

                        <!--GIO HANG KHONG CO GI-->
                        <c:if test = "${size == null}">
                            <div style = "height: 200px;">Gio hang rong, Vui long chon san pham</div>
                        </c:if>

                        <c:if test = "${size != null}">
                            
                            <!--SAN PHAM--> 
                            <div class="col-md-12 col-lg-8">
                                <div class="items">
                                    <c:forEach var = "order" items = "${requestScope.data}">
                                        <c:set var="total" value="${total +order.getGiaThanh()*order.getSoLuong()}" />
                                        <div class="product">
                                            <div class="row">
                                                
                                                <!--IMG-->
                                                <div class="col-md-3">
                                                    <img class="img-fluid mx-auto d-block image" src="${order.getSanPham().getImg()}">
                                                </div>

                                                <!--DETAIL-->
                                                <div class="col-md-9" style ="align-content: center; text-align: center;">
                                                    <div class="info">
                                                        <div class="row">
                                                            <!--MaSP-->
                                                            <input type ="text" hidden name = "MaSP" value = "${order.getSanPham().getMaSP()}"></input>
                                                            <div class="col-md-4 product-name">
                                                                <div class="product-name">
                                                                    <!--TenSP-->
                                                                    <a href="#">${order.getSanPham().getTenSP()}</a>
                                                                    <!--TSKT-->
                                                                    <div class="product-info">
                                                                        <div>Display: <span class="value">5 inch</span></div>
                                                                        <div>RAM: <span class="value">4GB</span></div>
                                                                        <div>Memory: <span class="value">32GB</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 quantity">
                                                                <label for="quantity">Quantity:</label>
                                                                <!--So Luong-->
                                                                <input id="quantity" type="number" value ="${order.getSoLuong()}" min ="1" max ="10" class="form-control quantity-input">
                                                            </div>
                                                            <div class="col-md-2 price">
                                                                <!--Gia Thanh-->
                                                                <span >${order.getGiaThanh()}</span>
                                                            </div>
                                                            <div class="col-md-2" >
                                                                <!--nut xoa-->
                                                                <button type="button" onclick="confirmDelete('${order.getSanPham().getMaSP()}');" style="border: 0px; padding: 0px; background-color: white; margin: 32px;" id="" class="" >
                                                                    <!--thung rac-->
                                                                    <svg width="20" height="20" viewBox="0 0 128 128" fill="#ff5b6a" class="icon" xmlns="http://www.w3.org/2000/svg"><path d="M4 30.2c-1.4 0-2.5-1.1-2.5-2.5s1.1-2.5 2.5-2.5l117.5.2c1.4 0 2.5 1.1 2.5 2.5s-1.1 2.5-2.5 2.5L4 30.2zm19.3 5.1c0-1.4 1.1-2.5 2.5-2.5s2.5 1.1 2.5 2.5v86.1l73.2-.8V36.2c0-1.4 1.1-2.5 2.5-2.5s2.5 1.1 2.5 2.5v89.6l-83.3.9V35.3z"/><path d="M85.3 108.4c-1.4 0-2.5-1.1-2.5-2.5V46.5c0-1.4 1.1-2.5 2.5-2.5s2.5 1.1 2.5 2.5v59.4c.1 1.4-1.1 2.5-2.5 2.5zm-39.4 0c-1.4 0-2.5-1.1-2.5-2.5V46.5c0-1.4 1.1-2.5 2.5-2.5s2.5 1.1 2.5 2.5v59.4c.1 1.4-1.1 2.5-2.5 2.5zm19.7 0c-1.4 0-2.5-1.1-2.5-2.5V46.5c0-1.4 1.1-2.5 2.5-2.5s2.5 1.1 2.5 2.5v59.4c.1 1.4-1.1 2.5-2.5 2.5zm16.3-81.7v-6.1c0-2.2-1.8-4-4-4H52.3c-2.3 0-4 1.8-4 4.1V26h-5v-5.3c0-5 4.1-9.1 9.1-9.1H78c5 0 9.1 4.1 9.1 9.1v6.1h-5.2z" fill="ff5b6a"/></svg>
                                                                </button>
                                                                </td>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>

                            <!--THANH TOAN-->
                            <div class="col-md-12 col-lg-4">
                                <div class="summary">
                                    <h3>Summary</h3>
                                    <div class="summary-item"><span class="text">Subtotal</span><span class="price">${total}</span></div>
                                    <div class="summary-item"><span class="text">Discount</span><span class="price">$0</span></div>
                                    <div class="summary-item"><span class="text">Shipping</span><span class="price">$0</span></div>
                                    <div class="summary-item"><span class="text">Total</span><span class="price">${total}</span></div>
                                    <button type="button" class="btn btn-primary btn-lg btn-block">Checkout</button>
                                </div>
                            </div>
                        </c:if>

                    </div> 
                </div>
            </div>
        </section>
                        
                         <!-- Footer-->
             <jsp:include page="../../common/homepage/footer.jsp" ></jsp:include>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <script>
        function confirmDelete(productID) {
            if (confirm("Are you sure you want to remove this item?")) {
                window.location.href = "deletecart?pid=" + productID;
            } else {
                return false;
            }
        }

    </script>
</html>
