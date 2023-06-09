<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
       <!--Icon-->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
        <!-- Css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/navbar.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/footer.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/pagination.css">
        <!-- Bootrap -->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
            <!-- Navbar-->
             <jsp:include page="../../common/homepage/navbar.jsp" ></jsp:include>             
             
             <div style ="height: 200px"></div>
             <!--Products-->
             <jsp:include page="../../common/homepage/product.jsp" ></jsp:include>
             
             <!-- Footer-->
             <jsp:include page="../../common/homepage/footer.jsp" ></jsp:include>
    </body>
</html>