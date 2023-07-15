<%-- 
    Document   : dathangthanhcong
    Created on : Jul 8, 2023, 9:46:35 PM
    Author     : ptkng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!--Icon-->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
        <!-- Css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/navbar.css">
        
          <!-- Bootrap -->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        
        <!-- Navbar-->
             <jsp:include page="../../common/homepage/navbar.jsp" ></jsp:include>     
        <h2>${requestScope.mess}</h2>
             
                
               <a href="${pageContext.request.contextPath}/list" class="navbar-logo">
                   Về trang chủ: <img style ="width: 100px;" class="logo" 
                                      src="https://www.icebergwebdesign.com/wp-content/uploads/2015/11/back-blue-button-xs.jpg" 
                                      alt="">
                </a>
    </body>
</html>
