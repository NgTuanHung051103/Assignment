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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/navbar.css">  

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
                                <a href="${pageContext.request.contextPath}/view/user/homepage/quat.jsp" class = "nav-link" style="color: #1f2022;">Quat</a>
                            </li>
                            <li class="nav-product">
                                <a href="" class = "nav-link" style="color: #1f2022;">Ti vi</a>
                            </li>
                            <li class="nav-product">
                                <a href="" class = "nav-link"style="color: #1f2022;" >Dieu hoa</a>
                            </li>
                            <li class="nav-product">
                                <a href="" class = "nav-link" style="color: #1f2022;">Tu lanh</a>
                            </li>
                        </ul>

                    </div>
                    <div class="navbar-right">
                        <ul class="navbar-right-ul">
                            <li class="nav-info">
                                <form action="search" method="GET">
                                    <input name ="txtSearch"  type="text" placeholder="Looking for?">
                                    <button type="submit">
                                        <i class="fa-solid fa-magnifying-glass"></i>
                                    </button>
                                </form>
                            </li>
                            <li class="nav-info">
                                <a href="${pageContext.request.contextPath}/view/user/homepage/login.jsp" class = "nav-link" style="color: #1f2022;">
                                    <i class="fa-regular fa-user" >
                                    </i>
                                </a>
                            </li>
                            <li class="nav-info">
                                <a href="" class = "nav-link" style="color: #1f2022;">
                                    <i class="fa-regular fa-heart"></i>
                                </a>
                            </li>
                            <li class="nav-info">
                                <a href="" class = "nav-link" style="color: #1f2022;">
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
