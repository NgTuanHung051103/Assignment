
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>bs4 product detail - Bootdey.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <!-- Css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/homepage/detailProduct.css">

        <!--css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/navbar.css"> 
    </head>

    <body>
        <!-- Navbar-->
        <jsp:include page="../../common/homepage/navbar.jsp" ></jsp:include>      
        
        <!--Page Content-->
        <c:set var = "SanPham" value="${requestScope.sp}"/>
        <c:set var = "TSKT" value="${requestScope.tskt3}"/>
        <div class =" container-fluid container-detailProduct">
            <div class="card">
                <div class="card-body">
                    <!--Ten San Pham-->
                    <h1 class="card-title">${SanPham.getTenSP()}</h1>
                    <h6 class="card-subtitle">Hàng Việt Nam chất lượng cao</h6>
                    <div class="row">

                        <!--Image-->
                        <div class="col-lg-5 col-md-5 col-sm-6">
                            <div class="white-box text-center"><img src="${SanPham.getImg()}" style ="width: 100%;" class="img-responsive"></div>
                        </div>

                        <!--Thong tin co ban-->
                        <div class="col-lg-7 col-md-7 col-sm-6">

                            <!--Description-->
                            <h4 class="box-title mt-5">Mô tả sản phẩm</h4>
                            <p>Lorem Ipsum available,but the majority have suffered alteration in some form,by injected humour,or randomised words which don't look even slightly believable.but the majority have suffered alteration in some form,by injected humour</p>

                            <!--Gia thanh-->
                            <h2 class="mt-5">
                                ${SanPham.getGiaThanh()} VNĐ
                                <small class="text-success">sale</small>
                            </h2>
                            <br></br>

                            <!--Them vao gio hang-->

                            <form action="addToCart" method="post">
                                <input name="MaSP" hidden value="${SanPham.getMaSP()}"></input>
                                <button class="btn btn-success btn-rounded mr-1" data-toggle="tooltip" title data-original-title="Add to cart">
                                    <i class="fa fa-shopping-cart"></i>
                                    Add to Cart
                                </button
                            </form>

                            <!--<button class="btn btn-primary btn-rounded" hidden> Buy Now</button>-->
                            <h3 class="box-title mt-5"></h3>
                            <ul class="list-unstyled">
                                <li><i class="fa fa-check text-success"></i>Thân thiện môi trường</li>
                                <li><i class="fa fa-check text-success"></i>1 đổi 1 trong vòng 1 năm</li>
                                <li><i class="fa fa-check text-success"></i>Bảo hành tận nơi trong 3 năm</li>
                            </ul>
                        </div>
                                
                        <!--Thong so ky thuat-->         
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <h3 class="box-title mt-5">General Info</h3>
                            <div class="table-responsive">
                                <table class="table table-striped table-product">
                                    <tbody>

                                        
                                        <tr>
                                            <td width="390">Kiểu Tủ</td>
                                            <td>${TSKT.getKieuTu()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Dung Tích</td>
                                            <td>${TSKT.getDungTich()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Công Nghệ Tiết Kiệm Điện</td>
                                            <td>${TSKT.getCongNgheTietKiemDien()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Công Nghệ Làm Lạnh</td>
                                            <td>${TSKT.getCongNgheLamLanh()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Công Nghệ Khánh Khuẩn Khử Mùi</td>
                                            <td>${TSKT.getCongNgheKhangKhuanKhuMui()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Công Nghệ Bảo Quản Thực Phẩm</td>
                                            <td>${TSKT.getCongNgheBaoQuanThucPham()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Kích Thước Khối Lượng</td>
                                            <td>${TSKT.getKichThuocKhoiLuong()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Tiện Ích</td>
                                            <td>${TSKT.getTienIch()} </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                                        
           <!-- Footer-->
             <jsp:include page="../../common/homepage/footer.jsp" ></jsp:include>              
                                        
                                        
    </body>
    
    
    
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">

    </script>

</html>