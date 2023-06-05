<%-- 
    Document   : product
    Created on : 04/06/2023, 5:16:18 PM
    Author     : NgTua
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
     <!-- Bootrap -->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        
    <link href="${pageContext.request.contextPath}/css/common/products.css">
        <title>JSP Page</title>
    </head>
    <body>
        
       <div class="container">
            <div class="row">

                <div class="col-lg-3">
                    <div class = "hello"></div>
                </div>

                <div class="col-lg-9">
                    <div class="row">
                        <c:forEach items="${listP}" var="o">
                            <div class="col-lg-4" style="float:left">
                                <div class="card">
                                    <img class="card-img-top" style="height:300px"src="${pageContext.request.contextPath}/images/Logo.png" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="#" title="View Product">${o.getTenSP()}</a></h4>
                                        <p class="card-text show_txt">${o.getTenSP()}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block">${o.getTenSP()} $</p>
                                            </div>
                                            <div class="col">
                                                <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div>
        </div>
        
    
    </body>
</html>
