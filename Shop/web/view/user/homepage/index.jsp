<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <!-- Icons -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/fontawesome-free-6.4.0-web/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.1/dist/css/bootstrap.min.css">
        <!-- Css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/navbar.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
        <!-- Bootrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.1/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
            <!-- Navbar-->
             <jsp:include page="../../common/navbar.jsp" ></jsp:include>
             
             <!--Products-->
             <jsp:include page="../../common/product.jsp" ></jsp:include>
             
             <!-- Footer-->
             <jsp:include page="../../common/footer.jsp" ></jsp:include>
    </body>
</html>