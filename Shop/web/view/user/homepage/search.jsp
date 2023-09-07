
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <!--Icon-->
       <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/img/favicon-32x32.png">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
        <!-- Css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/navbar.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/footer.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/pagination.css">
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/common/products.css">
        <!-- Bootrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <!-- Navbar-->
        <jsp:include page="../../common/homepage/navbar.jsp" ></jsp:include>

            <h2>
                Search for: ${requestScope.key}
            </h2>
            
        <!--Products-->
      <div class="container" style ="margin-top: 20px;">
            <!--hien thi noi dung san pham-->
            <div class="product">
                <div class="row">
                    <c:forEach items="${requestScope.listOfPage}" var="o">
                        <div class="col-lg-3" style="float:left">
                            <div class="card">
                                <img class="card-img-top" style="height:300px"src="${o.getImg()}" alt="Card image cap">
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
                        <a class = "${i==pageNow?"active":""}"  href="search?pageNow=${i}&key=${requestScope.key}">${i}</a>
                    </c:forEach>
                </div>
            </div>
      </div>
            <!-- Footer-->
        <jsp:include page="../../common/homepage/footer.jsp" ></jsp:include>

    </body>
</html>
