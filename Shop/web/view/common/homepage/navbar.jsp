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
        <!--css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/navbar.css">  
        <!--fontware-->
         <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'> 
         
         <!--boostrap icon-->
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">    
    </head>
    <body>
        <section id="navbar">
            <div class="container">
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
                                    <input name ="txtSearch"  type="text" placeholder="Looking for?" >
                                    <button type="submit">
                                        <i class="bi bi-search  "></i>
                                    </button>
                                </form>
                            </li>
                            <li class="nav-info">
                            <c:if test ="${sessionScope.loginedAccount != null }">
                                <i class="fa fa-user-o" >
                                    <ul class = "user-info">
                                        <li> <a href="">Tai Khoan Cua Toi</a></li>
                                        <li> <a href="">Don Mua</a></li>
                                        <li> <a href="">Dang Xuat</a></li>
                                    </ul>
                                </i>
                            </c:if>
                            

                            </li>
                            <li class="nav-info">
                                <a href="" class = "nav-link" style="color: #1f2022;">
                                    <i class="bi bi-heart"></i>
                                </a>
                            </li>
                            <li class="nav-info">
                                <a href="" class = "nav-link" style="color: #1f2022;">
                                    <span class="bi bi-cart3"></span>                                
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </section>
    </body>
</html>