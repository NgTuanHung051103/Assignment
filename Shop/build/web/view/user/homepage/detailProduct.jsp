
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>bs4 product detail - Bootdey.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
            body{
                background-color: #edf1f5;
                margin-top:20px;
            }
            .card {
                margin-bottom: 30px;
            }
            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 0 solid transparent;
                border-radius: 0;
            }
            .card .card-subtitle {
                font-weight: 300;
                margin-bottom: 10px;
                color: #8898aa;
            }
            .table-product.table-striped tbody tr:nth-of-type(odd) {
                background-color: #f3f8fa!important
            }
            .table-product td{
                border-top: 0px solid #dee2e6 !important;
                color: #728299!important;
            }
        </style>
    </head>
    <body>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="container">
            <c:set var = "SanPham" value="${requestScope.sp}"/>
             <c:set var = "TSKT" value="${requestScope.tskt}"/>
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
                        
                        <!--Thong tin chi tiet-->
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
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <h3 class="box-title mt-5">General Info</h3>
                            <div class="table-responsive">
                                <table class="table table-striped table-product">
                                    <tbody>
                                       
                                         <tr>
                                            <td width="390">Loại quạt</td>
                                            <td>${TSKT.getLoaiQuat()}</td>
                                        </tr>
                                         <tr>
                                            <td width="390">Đường kính quạt</td>
                                            <td>${TSKT.getDuongKinhQuat()}</td>
                                        </tr>
                                         <tr>
                                            <td width="390">Chế độ gió</td>
                                            <td>${TSKT.getCheDoGio()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Bảng điều khiển</td>
                                            <td>${TSKT.getBangDieuKhien()}</td>
                                        </tr>
                                         <tr>
                                            <td width="390">Loại motor</td>
                                            <td>${TSKT.getLoaiMotor()}</td>
                                        </tr>
                                         <tr>
                                            <td width="390">Tiện ích</td>
                                            <td>${TSKT.getTienIch()}</td>
                                        </tr>
                                         <tr>
                                            <td width="390">Kích thước - Khối lượng</td>
                                            <td>${TSKT.getKichThuocKhoiLuong()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Số cánh quạt</td>
                                            <td>${TSKT.getSoCanhQuat()} cánh</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript">

        </script>
    </body>
</html>