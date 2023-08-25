<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
       
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet: animation -->
        <link href="${pageContext.request.contextPath}/assets/owlcarousel/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="${pageContext.request.contextPath}/css/template/style.css" rel="stylesheet">
        
        <!-- Customized Bootstrap Stylesheet -->
        <link href="${pageContext.request.contextPath}/css/template/added.css" rel="stylesheet">
    </head>
    <body>
              <!-- Topbar-->
             <jsp:include page="../../common/homepage/topbar.jsp" ></jsp:include>       
        
            <!-- Navbar-->
             <jsp:include page="../../common/homepage/navbar.jsp" ></jsp:include>             
             
             <!--Products-->
             <jsp:include page="../../common/homepage/product.jsp" ></jsp:include>
             
             <!-- Footer-->
             <jsp:include page="../../common/homepage/footer.jsp" ></jsp:include>
             
             
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
             
    </body>
</html>