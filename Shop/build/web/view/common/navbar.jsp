<%-- 
    Document   : header
    Created on : 04/06/2023, 1:01:27 PM
    Author     : NgTua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/fontawesome-free-6.4.0-web/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/navbar.css">  
        
    </head>
    <body>
        <section id="navbar">
            <div class="container">
                <nav class="navbar">
                    <div class="navbar-left">
                        <a href="" class="navbar-logo">
                            <img class="logo" src="${pageContext.request.contextPath}/images/Logo.png" alt="">
                        </a>
                        <ul class = "navbar-left-products">
                            <li class="nav-product">
                                <a href="" class = "nav-link">Quat</a>
                            </li>
                            <li class="nav-product">
                                <a href="" class = "nav-link">Ti vi</a>
                            </li>
                            <li class="nav-product">
                                <a href="" class = "nav-link">Dieu hoa</a>
                            </li>
                            <li class="nav-product">
                                <a href="" class = "nav-link">Tu lanh</a>
                            </li>
                        </ul>

                    </div>
                    <div class="navbar-right">
                        <ul class="navbar-right-ul">
                            <li class="nav-info">
                                <a href="" class = "nav-link">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </a>
                            </li>
                            <li class="nav-info">
                                <a href="${pageContext.request.contextPath}/view/user/homepage/login.jsp" class = "nav-link">
                                    <i class="fa-regular fa-user">
                                    </i>
                                </a>
                            </li>
                            <li class="nav-info">
                                <a href="" class = "nav-link">
                                    <i class="fa-regular fa-heart"></i>
                                </a>
                            </li>
                            <li class="nav-info">
                                <a href="" class = "nav-link">
                                    <i class="fa-solid fa-cart-shopping">
                                    </i>
                                </a>
                            </li>
                        </ul>
                    </div>


                </nav>
            </div>

        </section>
    </body>
</html>
