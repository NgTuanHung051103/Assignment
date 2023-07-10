<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>


<hr>
<body style ="background-color: #F5F5F5">


    <div class="container bootstrap snippet">

        <div class="row">
            <div class="col-sm-10"><h1>User name</h1></div>
            <!--<div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>-->
        </div>

        <div class="row">

            <div class="col-sm-3"><!--left col-->

                <div class="text-center">
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
                </div>

            </div><!--/col-3-->

            <!--right col-->
            <div class="col-sm-9"> 

                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#Profile">Thong tin ca nhan</a></li>
                    <li><a data-toggle="tab" href="#ChoXacNhan">Cho Xac Nhan</a></li>
                    <li><a data-toggle="tab" href="#ChoLayHang">Cho Lay Hang</a></li>
                    <li><a data-toggle="tab" href="#DaGiao">Da Giao</a></li>
                </ul>


                <div class="tab-content">

                    <!--Profile :-->
                    <div class="tab-pane active" id="Profile">
                        <hr>

                        <form class="form" action="##" method="post" id="registrationForm">

                            <!--TEN:--> 
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="first_name"><h4>Ten: </h4></label>
                                    <input type="text" class="form-control" 
                                           name="first_name" id="first_name" 
                                           placeholder="first name" 
                                           title="enter your first name if any."
                                           value = "${requestScope.user.getTen()}">
                                </div>
                            </div>


                            <!--SO DIEN THOAI:--> 
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="phone"><h4>So Dien Thoai: </h4></label>
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
                                    <label for="email"><h4>Noi O: </h4></label>
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
                                    <label for="password"><h4>Password</h4></label>
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


                    <!--Cho Xac Nhan-->
                    <div class="tab-pane" id="ChoXacNhan">
                        <h2></h2>

                        <!--1 ORDER-->
                        <c:forEach var = "order" items = "${requestScope.list_orderCXN}">
                            <c:set var = "total" value = "${0}"/>
                            <hr>
                            <div class="form-group" >
                                <div class="col-xs-12" style = "display: block; background-color: #FFFFFF; height: 30px; margin-bottom: 4px;"  >
                                    <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF; height: 100%;">
                                        <span>Chua biet dien gi</span>
                                    </div>
                                    <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF;  height: 100%;">
                                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF;">
                                            <span>Dang chuan bi hang</span>
                                        </div>
                                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF;">
                                            <span>Van Chuyen</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!--Duyet tung san pham co trong order-->
                            <!--Su dung if : OrD.OrderID = Order thi print-->
                            <c:forEach var = "orderdetail" items = "${requestScope.list_order_detailCXN}">
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
                                            <span  style = "color: #EE4D2D; font-size: 20px;">So Luong: </span>
                                            <br>
                                            <span style = "margin-left: 40px;"> ${orderdetail.getSoLuong()}</span>
                                            <!--So Luong-->
                                        </div>
                                        <div class="col-md-2 price" style = "padding-top: 6px;">
                                            <!--Gia Thanh-->
                                            <span style = "color: #EE4D2D; font-size: 20px;">Gia thanh:</span>
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
                                       <h3 style="color: #EE4D2D; margin: 12px 0px 10px 0px">${total} VND</h3>
                                    </div>
                                    <div class="float-right">
                                        <form action ="checkOut" method ="GET" id ="checkOut" style = "margin-top: 6px;">
                                            <button type="button" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                                    style = "padding: 6px 8px;">Huy Don Hang</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div><!--/tab-pane-->


                    <!--Cho Lay Hang:-->
                    <div class="tab-pane" id="ChoLayHang">
                            <h2></h2>

                        <!--1 ORDER-->
                        <c:forEach var = "order" items = "${requestScope.list_orderCLH}">
                            <c:set var = "total" value = "${0}"/>
                            <hr>
                            <div class="form-group" >
                                <div class="col-xs-12" style = "display: block; background-color: greenyellow; height: 30px;;"  >
                                    <div class ="col-md-6"  style = "display: block; background-color: orange; height: 100%;">
                                        <span>Chua biet dien gi</span>
                                    </div>
                                    <div class ="col-md-6"  style = "display: block; background-color: pink;  height: 100%;">
                                        <div class ="col-md-6"  style = "display: block; background-color: blueviolet;">
                                            <span>Dang chuan bi hang</span>
                                        </div>
                                        <div class ="col-md-6"  style = "display: block; background-color: wheat;">
                                            <span>Van Chuyen</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Duyet tung san pham co trong order-->
                            <!--Su dung if : OrD.OrderID = Order thi print-->
                            <c:forEach var = "orderdetail" items = "${requestScope.list_order_detailCLH}">
                                 <c:if test = "${orderdetail.getOrderID() == order.getOrderID()}">
                                        <div class="form-group" >
                                    <div class="col-xs-12" style = "display: block; background-color: red; height: 100px; margin: 5px 0px; "  >
                                        <!--MaSP-->
                                        <input type ="text" hidden name = "MaSP" value = "MaSP"></input>
                                        <div class="col-md-3">
                                            <img class="img-fluid mx-auto d-block image" src="${orderdetail.getImg()}">
                                        </div>
                                        <div class="col-md-4 product-name">
                                            <div class="product-name">
                                                <!--TenSP-->
                                                <a href="#">${orderdetail.getTenSP()}</a>
                                                <!--TSKT-->
                                            </div>
                                        </div>
                                        <div class="col-md-3 quantity">
                                           Quantity: ${orderdetail.getSoLuong()}
                                            <!--So Luong-->
                                        </div>
                                        <div class="col-md-2 price">
                                            <!--Gia Thanh-->
                                            <span >Gia thanh:</span>
                                            <span> ${orderdetail.getGiaThanh()}</span>
                                        </div>
                                    </div>
                                </div>
                                     <c:set var ="total" value ="${total + orderdetail.getGiaThanh() }"/>   
                                    </c:if>
                            </c:forEach>

                            <div class="form-group">
                                <div class="col-xs-12" style = "display: block; background-color: yellow; height: 50px; "  >
                                    <div class="float-left">
                                        <h3 style="color: #EE4D2D">${total} VND</h3>
                                    </div>
                                    <div class="float-right">
                                        <form action ="checkOut" method ="GET" id ="checkOut" >
                                            <button type="button" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                                    style = "padding: 6px 8px;">Huy Don Hang</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                    <!--Da Giao-->
                    <div class="tab-pane" id="DaGiao">
                            <h2></h2>

                        <!--1 ORDER-->
                        <c:forEach var = "order" items = "${requestScope.list_orderDG}">
                            <c:set var = "total" value = "${0}"/>
                            <hr>
                            <div class="form-group" >
                                <div class="col-xs-12" style = "display: block; background-color: greenyellow; height: 30px;;"  >
                                    <div class ="col-md-6"  style = "display: block; background-color: orange; height: 100%;">
                                        <span>Chua biet dien gi</span>
                                    </div>
                                    <div class ="col-md-6"  style = "display: block; background-color: pink;  height: 100%;">
                                        <div class ="col-md-6"  style = "display: block; background-color: blueviolet;">
                                            <span>Dang chuan bi hang</span>
                                        </div>
                                        <div class ="col-md-6"  style = "display: block; background-color: wheat;">
                                            <span>Van Chuyen</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Duyet tung san pham co trong order-->
                            <!--Su dung if : OrD.OrderID = Order thi print-->
                            <c:forEach var = "orderdetail" items = "${requestScope.list_order_detailDG}">
                                 <c:if test = "${orderdetail.getOrderID() == order.getOrderID()}">
                                        <div class="form-group" >
                                    <div class="col-xs-12" style = "display: block; background-color: red; height: 100px; margin: 5px 0px; "  >
                                        <!--MaSP-->
                                        <input type ="text" hidden name = "MaSP" value = "MaSP"></input>
                                        <div class="col-md-3">
                                            <img class="img-fluid mx-auto d-block image" src="${orderdetail.getImg()}">
                                        </div>
                                        <div class="col-md-4 product-name">
                                            <div class="product-name">
                                                <!--TenSP-->
                                                <a href="#">${orderdetail.getTenSP()}</a>
                                                <!--TSKT-->
                                            </div>
                                        </div>
                                        <div class="col-md-3 quantity">
                                           Quantity: ${orderdetail.getSoLuong()}
                                            <!--So Luong-->
                                        </div>
                                        <div class="col-md-2 price">
                                            <!--Gia Thanh-->
                                            <span >Gia thanh:</span>
                                            <span> ${orderdetail.getGiaThanh()}</span>
                                        </div>
                                    </div>
                                </div>
                                     <c:set var ="total" value ="${total + orderdetail.getGiaThanh() }"/>   
                                    </c:if>
                            </c:forEach>

                            <div class="form-group">
                                <div class="col-xs-12" style = "display: block; background-color: yellow; height: 50px; "  >
                                    <div class="float-left">
                                        ${total} VND
                                    </div>
                                    <div class="float-right">
                                        <form action ="checkOut" method ="GET" id ="checkOut" >
                                            <button type="button" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                                    style = "padding: 6px 8px;">Huy Don Hang</button>
                                        </form>
                                    </div>
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