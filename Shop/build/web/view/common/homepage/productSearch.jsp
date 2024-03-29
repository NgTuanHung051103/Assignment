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

         <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/img/favicon-32x32.png">
        <link href="${pageContext.request.contextPath}/css/common/products.css">
        <link href="${pageContext.request.contextPath}/css/common/pagination.css">
        <title>JSP Page</title>
    </head>
    <body>
        <!--pagination: NhomSP-->
        <div class="category-nhomSP col-md-2">
            <c:set var = "nhomSP_ID" value = "${requestScope.nhomSP_ID}"/>
            <c:forEach items = "${requestScope.data}" var ="c">
                <a  href ="list?nhomSP_ID=${c.getMaNhom()}">${c.getTenNhom()}</a><br/>
            </c:forEach>
        </div>
        <div class="container" style ="margin-top: 20px;">



            <!--hien thi noi dung san pham-->
            <div class="product">
                <div class="row">
                    <c:forEach items="${requestScope.listOfPage}" var="o">
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

                <!--paginatio: danh so trang-->
                <div class ="paginationOfProduct">
                    <c:set var = "pageNow" value = "${requestScope.pageNow}"/>
                    <c:forEach begin ="${1}" end = "${requestScope.numPage}" var = "i">
                        <a class = "${i==pageNow?"active":""}"  href="list?pageNow=${i}&nhomSP_ID=${nhomSP_ID}">${i}</a>
                    </c:forEach>
                </div>
            </div>


        </div>
    </div>

</body>
</html>
