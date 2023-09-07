<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <!--jstl-->
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/img/favicon-32x32.png">
        <!--Icon-->
        <link rel='stylesheet'
              href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
        <!-- Css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/navbar.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/homepage/quat.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/pagination.css">
        <!-- Bootrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>

    <body>
        <!-- Navbar-->
        <jsp:include page="../../common/homepage/navbar.jsp"></jsp:include>

            <div style="margin-top: 40px;"></div>

            <form action ="${pageContext.request.contextPath}/tulanh" method ="GET">
            <button class="submit-filter">Tim Kiem</button>
        </form>
        <!--Product-->
        <div class="container" style ="margin-top: 20px;">
            <!--hien thi noi dung san pham-->
            <div class="product">
                <div class="row">
                    <c:forEach items="${requestScope.listOfPage}" var="o">
                        <div class="col-lg-3" style="float:left">
                            <div class="card">
                                <img class="card-img-top" style="height:300px"src="${o.getImg()}"alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title show_txt"><a href="#" title="View Product">${o.getTenSP()}</a></h4>
                                    <p class="card-text show_txt">${o.getTenSP()}</p>
                                    <div class="row">
                                        
                                        <div class="col">
                                                <a href ="detailProduct?MaSP=${o.getMaSP()}">
                                                    <p class="btn btn-danger btn-block">View Detail</p>
                                                </a>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <!--paginatio: danh so trang-->
                
                  <div class ="paginationOfProduct" style = "display: flex; justify-content: center;">
                    <c:set var = "pageNow" value = "${requestScope.pageNow}"/>
                    <c:forEach begin ="${1}" end = "${requestScope.numPage}" var = "i">
                        <a class = "${i==pageNow?"active":""}"  href="tulanh?pageNow=${i}">${i}</a>
                    </c:forEach>
                </div>
            </div>
        </div>




        <!-- Footer-->
        <jsp:include page="../../common/homepage/footer.jsp"></jsp:include>
    </body>



 

</html>