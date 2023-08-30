<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->

<head>
    <title>Bootstrap Example</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!-- Css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/navbar.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/account/navbar.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
          integrity="sha512-rqQltXRuHxtPWhktpAZxLHUVJ3Eombn3hvk9PHjV/N5DMUYnzKPC1i3ub0mEXgFzsaZNeJcoE0YHq0j/GFsdGg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Icon -->
    <script src="https://kit.fontawesome.com/756da913d7.js" crossorigin="anonymous"></script>

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Anuphan:wght@500;600&family=Dela+Gothic+One&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
</head>



    <!--Navbar MAde by Chiiu-->
    <nav class="headerNav_section" style ="background-color: #f8e5e3">
        <a href="${pageContext.request.contextPath}/home" class="logo"><span>QC</span>Select</a>
        <div class="feature_wrapper">
            <input type="checkbox" hidden id="en_search">
            <form action="search" method="get">
                <input type="search" placeholder="Looking for?" name="keyword">
                <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
            <label for="en_search" class="fa-solid fa-magnifying-glass"></label>
            <a class="fa-solid fa-cart-shopping" href="${pageContext.request.contextPath}/cart" ></a>

            <c:set var ="cookie" value = "${sessionScope.cookies}"/>

            <c:if test ="${cookie.loginedAccount == null }">
                <a class="fa-sharp fa-solid fa-user" href="${pageContext.request.contextPath}/login"></a>
            </c:if> 
            <c:if test ="${cookie.loginedAccount != null }">
                <a href="${pageContext.request.contextPath}/account" class="fa-solid fa-gear"></a>
                <a class="fa-sharp fa-solid fa-sign-out" href="${pageContext.request.contextPath}/logoutServlet"></a>

<!--<a href="${pageContext.request.contextPath}/profile" class="fa-solid fa-gear"></a>-->

            </c:if>
        </div>
    </nav>
</body>