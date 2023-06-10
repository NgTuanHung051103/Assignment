<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <!--jstl-->
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:include page="../../common/navbar.jsp"></jsp:include>

            <div style="margin-top: 40px;"></div>

        <% String s = (String)request.getAttribute("loai-quat");%>
        <h1> <%=s%> </h1>


        <form action ="${pageContext.request.contextPath}/quat" method ="GET">
            <ul class ="filter-property" style="list-style: none;">
                <li class ="filter-property-list"> 
                    <select name = "loai-quat" id="filter-color" >
                        <option value="all" ${ (s.equalsIgnoreCase("") || s.equalsIgnoreCase("all")) ? 'selected' : '' }>Tất cả</option>
                        <option value="quat-treo-tuong" ${ s.equalsIgnoreCase("quat-treo-tuong") ? 'selected' : '' }>Quạt treo tường</option>
                        <option value="quat-dung" ${ s.equalsIgnoreCase("quat-dung") ? 'selected' : '' }>Quạt đứng</option>
                        <option value="quat-tran" ${ s.equalsIgnoreCase("quat-tran") ? 'selected' : '' }>Quạt trần</option>
                    </select>
                </li>
                <li class ="filter-property-list">
                    <select name = "hang" id="filter-size" value ="S">
                        <option value="all">Tất cả</option>
                        <option value="Senko">S</option>
                        <option value="asia">M</option>
                        <option value="kdk">L</option>
                    </select>
                </li>
                <li class ="filter-property-list"> 
                    <select name ="so-canh-quat" id="filter-gender">
                        <option value="all">Tất cả</option>
                        <option value="3">3 canh</option>
                        <option value="4">bon canh</option>
                        <option value="5">nam canh</option>e
                        <option value="6">sau canh</option>
                    </select>
                </li>
                <li class ="filter-property-list">
                    <select name ="gia" id="filter-price">
                        <option value="all">Tất cả</option>
                        <option value="0-300">Dưới 300k</option>
                        <option value="300-500">300k-500k</option>
                        <option value="500-1000">500k-1000k</option>
                        <option value=">1000">Tren 1000k</option>
                    </select>
                </li>
            </ul>

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
                        <a class = "${ i == pageNow?"active":""}"  href="quat?pageNow=${i}">${i}</a>
                    </c:forEach>
                </div>
            </div>
        </div>




        <!-- Footer-->
        <jsp:include page="../../common/footer.jsp"></jsp:include>
    </body>



    <script>
        // Lấy các phần tử select
        var filterColor = document.getElementById("filter-color");
        var filterSize = document.getElementById("filter-size");
        var productList = document.getElementById("product-list");

        // Lắng nghe sự kiện khi thay đổi các select
        filterColor.addEventListener("change", filterProducts);
        filterSize.addEventListener("change", filterProducts);

        // Hàm lọc sản phẩm
        function filterProducts() {
            var selectedColor = filterColor.value;
            var selectedSize = filterSize.value;

            // Lặp qua từng sản phẩm để kiểm tra tính chất
            var products = productList.getElementsByClassName("product");
            for (var i = 0; i < products.length; i++) {
                var product = products[i];
                var color = product.dataset.color;
                var size = product.dataset.size;

                // Kiểm tra tính chất và ẩn/hiển thị sản phẩm
                if ((selectedColor !== "" && color !== selectedColor) || (selectedSize !== "" && size !== selectedSize)) {
                    product.classList.add("hide");
                } else {
                    product.classList.remove("hide");
                }
            }
        }

    </script>

</html>