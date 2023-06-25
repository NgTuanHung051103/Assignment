<%-- 
    Document   : header
    Created on : 04/06/2023, 1:01:27 PM
    Author     : NgTua
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/navbar.css">  
        <!--fontware-->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'> 

        <!--boostrap icon-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">    
    
    </head>
    <body>
                <div class = "container-fluid container-navbar" >
                    <nav class="navbar">
                        <div class="navbar-left">
                            <a href="${pageContext.request.contextPath}/list" class="navbar-logo">
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
                        <div class="navbar-right" >
                            <ul class="navbar-right-ul">
                                <li class="nav-info">
                                    <form action="search" method="GET">
                                        <input name ="key"  type="text" placeholder="Looking for?" >
                                        <button type="submit">
                                            <i class="bi bi-search  "></i>
                                        </button>
                                    </form>
                                </li>

                                <c:set var ="cookie" value = "${sessionScope.cookies}"/>

                                <li class="nav-info">
                                    <c:if test ="${cookie.loginedAccount != null }">
                                        <div class="dropdown" style="margin: auto 12px auto 26px;">
                                            <i class="fa fa-user-o logined" ></i>
                                            <div class="dropdown-content">
                                                <a href="#">Tài Khoản</a>
                                                <a href="#">Đơn Mua</a>
                                                <a href="${pageContext.request.contextPath}/logoutServlet">Đăng Xuất</a>
                                            </div>
                                        </div>  
                                    </c:if>

                                    <c:if test ="${cookie.loginedAccount == null }">
                                        <a href  ="${pageContext.request.contextPath}/view/user/homepage/login.jsp"
                                           style = "color: black;"> 
                                            <i class="fa fa-user-o"  style="margin: auto 12px auto 16px;" > </i> 
                                        </a>
                                    </c:if>
                                </li>    
                                <li class="nav-info">
                                    <a href="" class = "nav-link" style="color: #1f2022;">
                                        <i class="bi bi-heart"></i>
                                    </a>
                                </li>
                                <li class="nav-info">
                                    <a href="cart" class = "nav-link" style="color: #1f2022;">
                                        <span class="bi bi-cart3"></span>                                
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
    </body>
</html>
