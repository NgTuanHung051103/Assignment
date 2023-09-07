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
        <!--Icon-->
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/img/favicon-32x32.png">
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

        <c:set var ="loat_quat" value = "${requestScope.loai_quat}"/> 
        <c:set var ="thuong_hieu" value = "${requestScope.thuong_hieu}"/>
        <c:set var ="so_canh_quat" value = "${requestScope.so_canh_quat}"/>
        <c:set var ="gia" value = "${requestScope.gia}"/>

        <form action ="${pageContext.request.contextPath}/quat" method ="GET">
            <ul class ="filter-property" style="list-style: none;">
                <li class ="filter-property-list"> 
                    <select name = "loai_quat" id="filter-color" >
                        <option value="all"  ${loai_quat.equalsIgnoreCase("all")?'selected':''}>Tất cả</option>
                        <option value="treo"  ${loai_quat.equalsIgnoreCase("treo")?'selected':''}>Quạt treo tường</option>
                        <option value= "đứng"  ${loai_quat.equalsIgnoreCase("đứng")?'selected':''}>Quạt đứng</option>
                        <option value="trần"  ${loai_quat.equalsIgnoreCase("trần")?'selected':''}>Quạt trần</option>
                    </select>
                </li> 
                <li class ="filter-property-list">
                    <select name = "thuong_hieu" id="filter-size" >
                        <option value="1"  ${thuong_hieu==1?'selected':''}>Tất cả</option>
                        <option value="2"  ${thuong_hieu==2?'selected':''}>Senko</option>
                        <option value="3" ${thuong_hieu==3?'selected':''}>Asia</option>
                        <option value="4"  ${thuong_hieu==4?'selected':''}>KDK</option>
                    </select>
                </li>
                <li class ="filter-property-list"> 
                    <select name ="so_canh_quat" id="filter-gender">
                        <option value="1" ${so_canh_quat==1?'selected':''}>Tất cả</option>
                        <option value="2" ${so_canh_quat==2?'selected':''}>3 cánh</option>
                        <option value="3" ${so_canh_quat==3?'selected':''}>4 cánh</option>
                        <option value="4" ${so_canh_quat==4?'selected':''}>5 cánh</option>
                        <option value="5" ${so_canh_quat==5?'selected':''}>6 cánh</option>
                    </select>
                </li>
                <li class ="filter-property-list">
                    <select name ="gia" id="filter-price">
                        <option value="1" ${gia==1?'selected':''}>Tất cả</option>
                        <option value="2" ${gia==2?'selected':''}>Dưới 300k</option>
                        <option value="3" ${gia==3?'selected':''}>300k-500k</option>
                        <option value="4" ${gia==4?'selected':''}>500k-1000k</option>
                        <option value="5" ${gia==5?'selected':''}>Tren 1000k</option>
                    </select>
                </li>
            </ul>
            <div>
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
                <div class ="paginationOfProduct">
                    <c:set var = "pageNow" value = "${requestScope.pageNow}"/>
                    <c:forEach begin ="${1}" end = "${requestScope.numPage}" var = "i">
                        <a class = "${ i == pageNow?"active":""}"  href="quat?pageNow=${i}&loai_quat=${loai_quat}&thuong_hieu=${thuong_hieu}&so_canh_quat=${so_canh_quat}&gia=${gia}">${i}</a>
                    </c:forEach>
                </div>
            </div>
        </div>




        <!-- Footer-->
        <jsp:include page="../../common/homepage/footer.jsp"></jsp:include>
    </body>



 

</html>