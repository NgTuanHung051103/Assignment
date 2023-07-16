<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->

<head>
    <title>Bootstrap Example</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!-- Css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/navbar.css">
</head>


<body style ="background-color: #F5F5F5">

    <!-- Navbar-->
    <jsp:include page="../../common/homepage/navbar.jsp" ></jsp:include> 


        <div class="container bootstrap snippet" style = "margin-top: 50px">

            <div class="row">

                <div class="col-sm-2">

                    <!--                <div class="text-center">
                                        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                                        <h6>Upload a different photo...</h6>
                                        <input type="file" class="text-center center-block file-upload">
                                    </div></hr><br>
                    
                    
                                    <div class="panel panel-default">
                                        <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
                                        <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
                                    </div>
                    
                    
                                    <ul class="list-group">
                                        <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
                                        <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
                                        <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
                                        <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
                                        <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
                                    </ul> 
                    
                                    <div class="panel panel-default">
                                        <div class="panel-heading">Social Media</div>
                                        <div class="panel-body">
                                            <i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
                                        </div>
                                    </div>-->

                </div>

                <!--right col-->
                <div class="col-sm-9"> 

                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#Profile">Thông tin cá nhân</a></li>
                        <li><a data-toggle="tab" href="#ThongBao">Thông báo</a></li>
                        <li><a data-toggle="tab" href="#ChoXacNhan">Chờ xác nhận</a></li>
                        <li><a data-toggle="tab" href="#DangGiao">Ðang Giao</a></li>
                        <li><a data-toggle="tab" href="#ThanhCong">Thành Công</a></li>
                        <li><a data-toggle="tab" href="#DaGiaoDich">Ðã mua</a></li>
                    </ul>


                    <div class="tab-content">

                        <!--Profile :-->
                        <div class="tab-pane active" id="Profile">
                            <hr>

                            <form class="form" action="saveProfile" method="post" id="registrationForm">

                                <!--TEN:--> 
                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="first_name"><h4>Tên:  </h4></label>
                                        <input type="text" class="form-control" 
                                               name="ten" id="first_name" 
                                               placeholder="first name" 
                                               title="enter your first name if any."
                                               value = "${requestScope.user.getTen()}">
                                </div>
                            </div>


                            <!--SO DIEN THOAI:--> 
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="phone"><h4>Số điện thoại: </h4></label>
                                    <input type="text" class="form-control" 
                                           name="phone" id="phone" 
                                           placeholder="enter phone" 
                                           title="enter your phone number if any."
                                           value = "${requestScope.user.getSDT()}">
                                </div>
                            </div>

                            <!--EMAIL:-->
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="email"><h4>Email</h4></label>
                                    <input type="email" class="form-control" 
                                           name="email" id="email" 
                                           placeholder="you@email.com" 
                                           title="enter your email."
                                           value = "${requestScope.user.getEmail()}">
                                </div>
                            </div>

                            <!--DIA CHI:-->
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="email"><h4>Địa chỉ: </h4></label>
                                    <input type="email" class="form-control" 
                                           name = "diachi" 
                                           id = "location" 
                                           placeholder="somewhere" 
                                           title="enter a location"
                                           value = "${requestScope.user.getDiaChi()}">
                                </div>
                            </div>

                            <!--PASSWORD:--> 
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="password"><h4>Mật khẩu</h4></label>
                                    <input type="password" class="form-control" 
                                           name="password" 
                                           id="password" 
                                           placeholder="password" 
                                           title="enter your password."
                                           value = "${requestScope.user.getMk()}">
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                    <!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
                                </div>
                            </div>
                        </form>

                        <hr>
                    </div><!--/tab-pane-->

                    <!--Thông báo-->
                    <div class="tab-pane" id="ThongBao">
                        <c:forEach var = "thongbao" items = "${requestScope.list_ThongBao}">

                            <div style="background-color: #f8f9fa; max-width: 500px; max-height: 100px;
                                 height: 50px;
                                 margin: 30px; display: flex; justify-items: left">
                                <span style = "margin: auto;">
                                    ${thongbao.getThongbao()}
                                </span> 
                            </div>

                        </c:forEach>


                    </div>


                    <!--Cho Xac Nhan-->
                    <div class="tab-pane" id="ChoXacNhan">
                        <h2></h2>

                        <!--1 ORDER-->
                        <c:forEach var = "order" items = "${requestScope.list_orderCXN}">
                            <c:set var = "total" value = "${0}"/>
                            <hr>
                            <div class="form-group" >
                                <div class="col-xs-12" style = "display: block; background-color: #FFFFFF; height: 30px; margin-bottom: 4px;
                                                    display: flex; align-items: center"  >
                                    <div   class = "col-xs-6" style = "display: block; background-color: #FFFFFF;">
                                        <span>Mã đơn hàng: ${order.getOrderID()}   Ngày đặt hàng: ${order.getOrderDate()}</span>
                                    </div>
                                    <div  class = "col-xs-6" style = "display: block; background-color: #FFFFFF;
                                          display: flex; ">
                                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF; height: 100%;">
                                            <span>Dia Chi: ${order.getAddress()}</span>
                                        </div>
                                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF;  height: 100%;">
                                            <span>
                                                <c:if test = "${order.getHttt() == 1 }">
                                                    Thanh toán trực tiếp
                                                </c:if>
                                                <c:if test = "${order.getHttt() == 2 }">
                                                    Chuyển khoản
                                                </c:if>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Duyet tung san pham co trong order-->
                            <!--Su dung if : OrD.OrderID = Order thi print-->
                            <c:forEach var = "orderdetail" items = "${requestScope.list_order_detailCXN}">

                                <!--Tim nhung orderdetail nam trong 1 order bang OrderID-->
                                <c:if test = "${orderdetail.getOrderID() == order.getOrderID()}">

                                    <!--lay thong tin san pham qua hashmap-->
                                    <c:set var = "sanpham" value = "${hashmapSanPham[orderdetail.getMaSP()]}"/>
                                    <div class="form-group" >
                                        <div class="col-xs-12" style = "display: block; background-color: #FFFFFF; height: 100px;  "  >
                                            <!--MaSP-->
                                            <input type ="text" hidden name = "MaSP" value = "MaSP"></input>
                                            <div class="col-md-3">
                                                <img class="img-fluid mx-auto d-block image" style=" max-height: 90px;" src="${sanpham.getImg()}">
                                            </div>
                                            <div class="col-md-4 product-name">
                                                <div class="product-name" style = "padding-top: 6px;">
                                                    <h5>${sanpham.getTenSP()}</h5>
                                                </div>
                                            </div>
                                            <div class="col-md-3 quantity" style = "padding-top: 6px;">
                                                <span  style = "color: #EE4D2D; font-size: 20px;">Số lượng: </span>
                                                <br>
                                                <span style = "margin-left: 40px;"> ${orderdetail.getSoLuong()}</span>
                                                <br>
                                                <span style = "margin-left: 12px;">Còn lại </span>
                                                <span > ${sanpham.getSoLuong()}</span>
                                            </div>
                                            <div class="col-md-2 price" style = "padding-top: 6px;">
                                                <!--Thành tiền-->
                                                <span style = "color: #EE4D2D; font-size: 20px;">Thành tiền:</span>
                                                <span > ${sanpham.getGiaThanh()} VNÐ</span>
                                            </div>
                                        </div>
                                    </div>
                                    <c:set var ="total" value ="${total + orderdetail.getGiaThanh() }"/>   
                                </c:if>
                            </c:forEach>
                            <div class="form-group">
                                <div class="col-xs-12" style = "display: block; background-color: #FFFEFB; height: 50px; margin-top:4px;margin-bottom: 10px"  >
                                    <div class="float-left">
                                        <h3 style="color: #EE4D2D; margin: 12px 0px 10px 0px">Tổng:  ${total} VND</h3>
                                    </div>
                                    <div class="float-right">
                                        <form action ="HuyDH" method ="POST" id ="checkOut" style = "margin-top: 6px;">
                                            <button type="submit" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                                    style = "padding: 6px 8px;">Hủy đơn hàng</button>
                                            <input type="text" name ="OrderID" hidden value ="${order.getOrderID()}"></input>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div><!--/tab-pane-->


                    <!--Dang Giao:-->
                    <div class="tab-pane" id="DangGiao">
                        <h2></h2>

                        <!--1 ORDER-->
                        <c:forEach var = "order" items = "${requestScope.list_orderDG}">
                            <c:set var = "total" value = "${0}"/>
                            <hr>
                            <div class="form-group" >
                                <div class="col-xs-12" style = "display: block; background-color: #FFFFFF; height: 30px; margin-bottom: 4px;
                                                    display: flex; align-items: center"  >
                                    <div   class = "col-xs-6" style = "display: block; background-color: #FFFFFF;">
                                        <span>Mã đơn hàng: ${order.getOrderID()}   Ngày đặt hàng: ${order.getOrderDate()}</span>
                                    </div>
                                    <div  class = "col-xs-6" style = "display: block; background-color: #FFFFFF;
                                          display: flex; ">
                                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF; height: 100%;">
                                            <span>Dia Chi: ${order.getAddress()}</span>
                                        </div>
                                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF;  height: 100%;">
                                            <span>
                                                <c:if test = "${order.getHttt() == 1 }">
                                                    Thanh toán trực tiếp
                                                </c:if>
                                                <c:if test = "${order.getHttt() == 2 }">
                                                    Chuyển khoản
                                                </c:if>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Duyet tung san pham co trong order-->
                            <!--Su dung if : OrD.OrderID = Order thi print-->
                            <c:forEach var = "orderdetail" items = "${requestScope.list_order_detailDG}">
                                <c:if test = "${orderdetail.getOrderID() == order.getOrderID()}">
                                    <div class="form-group" >
                                        <div class="col-xs-12" style = "display: block; background-color: #FFFFFF; height: 100px;  "  >
                                            <!--MaSP-->
                                            <input type ="text" hidden name = "MaSP" value = "MaSP"></input>
                                            <div class="col-md-3">
                                                <img class="img-fluid mx-auto d-block image" style=" max-height: 90px;" src="${orderdetail.getImg()}">
                                            </div>
                                            <div class="col-md-4 product-name">
                                                <div class="product-name" style = "padding-top: 6px;">
                                                    <!--TenSP-->
                                                    <h5>${orderdetail.getTenSP()}</h5>
                                                    <!--TSKT-->
                                                </div>
                                            </div>
                                            <div class="col-md-3 quantity" style = "padding-top: 6px;">
                                                <span  style = "color: #EE4D2D; font-size: 20px;">Số lượng: </span>
                                                <br>
                                                <span style = "margin-left: 40px;"> ${orderdetail.getSoLuong()}</span>
                                                <!--Số lượng-->
                                            </div>
                                            <div class="col-md-2 price" style = "padding-top: 6px;">
                                                <!--Thành tiền-->
                                                <span style = "color: #EE4D2D; font-size: 20px;">Thành tiền:</span>
                                                <span > ${orderdetail.getGiaThanh()} VNÐ</span>
                                            </div>
                                        </div>
                                    </div>
                                    <c:set var ="total" value ="${total + orderdetail.getGiaThanh() }"/>   
                                </c:if>
                            </c:forEach>

                            <div class="form-group">
                                <div class="col-xs-12" style = "display: block; background-color: #FFFEFB; height: 50px; margin-top:4px;margin-bottom: 10px"  >
                                    <div class="float-left">
                                        <h3 style="color: #EE4D2D; margin: 12px 0px 10px 0px">Tổng:  ${total} VND</h3>
                                    </div>
                                    <!--                                    <div class="float-right">
                                                                            <form action ="checkOut" method ="GET" id ="checkOut" style = "margin-top: 6px;">
                                                                                <button type="button" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                                                                        style = "padding: 6px 8px;">Hủy đơn hàng</button>
                                                                            </form>
                                                                        </div>-->
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                    <!--Thanh Cong-->
                    <div class="tab-pane" id="ThanhCong">
                        <h2></h2>

                        <!--1 ORDER-->
                        <c:forEach var = "order" items = "${requestScope.list_orderTC}">
                            <c:set var = "total" value = "${0}"/>
                            <hr>
                              <div class="form-group" >
                                <div class="col-xs-12" style = "display: block; background-color: #FFFFFF; height: 30px; margin-bottom: 4px;
                                                    display: flex; align-items: center"  >
                                    <div   class = "col-xs-6" style = "display: block; background-color: #FFFFFF;">
                                        <span>Mã đơn hàng: ${order.getOrderID()}   Ngày đặt hàng: ${order.getOrderDate()}</span>
                                    </div>
                                    <div  class = "col-xs-6" style = "display: block; background-color: #FFFFFF;
                                          display: flex; ">
                                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF; height: 100%;">
                                            <span>Dia Chi: ${order.getAddress()}</span>
                                        </div>
                                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF;  height: 100%;">
                                            <span>
                                                <c:if test = "${order.getHttt() == 1 }">
                                                    Thanh toán trực tiếp
                                                </c:if>
                                                <c:if test = "${order.getHttt() == 2 }">
                                                    Chuyển khoản
                                                </c:if>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Duyet tung san pham co trong order-->
                            <!--Su dung if : OrD.OrderID = Order thi print-->
                            <c:forEach var = "orderdetail" items = "${requestScope.list_order_detailTC}">
                                <c:if test = "${orderdetail.getOrderID() == order.getOrderID()}">
                                    <div class="form-group" >
                                        <div class="col-xs-12" style = "display: block; background-color: #FFFFFF; height: 100px;  "  >
                                            <!--MaSP-->
                                            <input type ="text" hidden name = "MaSP" value = "MaSP"></input>
                                            <div class="col-md-3">
                                                <img class="img-fluid mx-auto d-block image" style=" max-height: 90px;" src="${orderdetail.getImg()}">
                                            </div>
                                            <div class="col-md-4 product-name">
                                                <div class="product-name" style = "padding-top: 6px;">
                                                    <!--TenSP-->
                                                    <h5>${orderdetail.getTenSP()}</h5>
                                                    <!--TSKT-->
                                                </div>
                                            </div>
                                            <div class="col-md-3 quantity" style = "padding-top: 6px;">
                                                <span  style = "color: #EE4D2D; font-size: 20px;">Số lượng: </span>
                                                <br>
                                                <span style = "margin-left: 40px;"> ${orderdetail.getSoLuong()}</span>
                                                <!--Số lượng-->
                                            </div>
                                            <div class="col-md-2 price" style = "padding-top: 6px;">
                                                <!--Thành tiền-->
                                                <span style = "color: #EE4D2D; font-size: 20px;">Thành tiền:</span>
                                                <span > ${orderdetail.getGiaThanh()} VNÐ</span>
                                            </div>
                                        </div>
                                    </div>
                                    <c:set var ="total" value ="${total + orderdetail.getGiaThanh() }"/>   
                                </c:if>
                            </c:forEach>

                            <div class="form-group">
                                <div class="col-xs-12" style = "display: block; background-color: #FFFEFB; height: 50px; margin-top:4px;margin-bottom: 10px"  >
                                    <div class="float-left">
                                        <h3 style="color: #EE4D2D; margin: 12px 0px 10px 0px">Tổng:  ${total} VND</h3>
                                    </div>
                                    <!--                                    <div class="float-right">
                                                                            <form action ="checkOut" method ="GET" id ="checkOut" style = "margin-top: 6px;">
                                                                                <button type="button" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                                                                        style = "padding: 6px 8px;">Hủy đơn hàng</button>
                                                                            </form>
                                                                        </div>-->
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                    <!--Da Giao Dich-->
                    <div class="tab-pane" id="DaGiaoDich">
                        <h2></h2>

                        <!--1 ORDER-->
                        <c:forEach var = "order" items = "${requestScope.list_orderDGD}">
                            <c:set var = "total" value = "${0}"/>
                            <hr>
                              <div class="form-group" >
                                <div class="col-xs-12" style = "display: block; background-color: #FFFFFF; height: 30px; margin-bottom: 4px;
                                                    display: flex; align-items: center"  >
                                    <div   class = "col-xs-6" style = "display: block; background-color: #FFFFFF;">
                                        <span>Mã đơn hàng: ${order.getOrderID()}   Ngày đặt hàng: ${order.getOrderDate()}</span>
                                    </div>
                                    <div  class = "col-xs-6" style = "display: block; background-color: #FFFFFF;
                                          display: flex; ">
                                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF; height: 100%;">
                                            <span>Dia Chi: ${order.getAddress()}</span>
                                        </div>
                                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF;  height: 100%;">
                                            <span>
                                                <c:if test = "${order.getHttt() == 1 }">
                                                    Thanh toán trực tiếp
                                                </c:if>
                                                <c:if test = "${order.getHttt() == 2 }">
                                                    Chuyển khoản
                                                </c:if>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Duyet tung san pham co trong order-->
                            <!--Su dung if : OrD.OrderID = Order thi print-->
                            <c:forEach var = "orderdetail" items = "${requestScope.list_order_detailDGD}">
                                <c:if test = "${orderdetail.getOrderID() == order.getOrderID()}">
                                    <div class="form-group" >
                                        <div class="col-xs-12" style = "display: block; background-color: #FFFFFF; height: 100px;  "  >
                                            <!--MaSP-->
                                            <input type ="text" hidden name = "MaSP" value = "MaSP"></input>
                                            <div class="col-md-3">
                                                <img class="img-fluid mx-auto d-block image" style=" max-height: 90px;" src="${orderdetail.getImg()}">
                                            </div>
                                            <div class="col-md-4 product-name">
                                                <div class="product-name" style = "padding-top: 6px;">
                                                    <!--TenSP-->
                                                    <h5>${orderdetail.getTenSP()}</h5>
                                                    <!--TSKT-->
                                                </div>
                                            </div>
                                            <div class="col-md-3 quantity" style = "padding-top: 6px;">
                                                <span  style = "color: #EE4D2D; font-size: 20px;">Số lượng: </span>
                                                <br>
                                                <span style = "margin-left: 40px;"> ${orderdetail.getSoLuong()}</span>
                                                <!--Số lượng-->
                                            </div>
                                            <div class="col-md-2 price" style = "padding-top: 6px;">
                                                <!--Thành tiền-->
                                                <span style = "color: #EE4D2D; font-size: 20px;">Thành tiền:</span>
                                                <span > ${orderdetail.getGiaThanh()} VNÐ</span>
                                            </div>
                                        </div>
                                    </div>
                                    <c:set var ="total" value ="${total + orderdetail.getGiaThanh() }"/>   
                                </c:if>
                            </c:forEach>

                            <div class="form-group">
                                <div class="col-xs-12" style = "display: block; background-color: #FFFEFB; height: 50px; margin-top:4px;margin-bottom: 10px"  >
                                    <div class="float-left">
                                        <h3 style="color: #EE4D2D; margin: 12px 0px 10px 0px">Tổng:  ${total} VND</h3>
                                    </div>
                                    <!--                                    <div class="float-right">
                                                                            <form action ="checkOut" method ="GET" id ="checkOut" style = "margin-top: 6px;">
                                                                                <button type="button" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                                                                        style = "padding: 6px 8px;">Hủy đơn hàng</button>
                                                                            </form>
                                                                        </div>-->
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div><!--/tab-pane-->
            </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
</body>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




<script>
    $(document).ready(function () {


        var readURL = function (input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.avatar').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }


        $(".file-upload").on('change', function () {
            readURL(this);
        });
    });
</script>