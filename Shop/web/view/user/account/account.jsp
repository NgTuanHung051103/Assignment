<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>


<hr>
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

                <!--Trang 1:-->
                <div class="tab-pane active" id="Profile">
                    <hr>

                    <form class="form" action="##" method="post" id="registrationForm">

                        <!--TEN:--> 
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="first_name"><h4>Ten: </h4></label>
                                <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                            </div>
                        </div>
                        <!--                        <div class="form-group">
                                                    <div class="col-xs-6">
                                                        <label for="last_name"><h4>Last name</h4></label>
                                                        <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                                                    </div>
                                                </div>-->

                        <!--SO DIEN THOAI:--> 
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="phone"><h4>So Dien Thoai: </h4></label>
                                <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any.">
                            </div>
                        </div>
                        <!--                        <div class="form-group">
                                                    <div class="col-xs-6">
                                                        <label for="mobile"><h4>Mobile</h4></label>
                                                        <input type="text" class="form-control" name="mobile" id="mobile" placeholder="enter mobile number" title="enter your mobile number if any.">
                                                    </div>
                                                </div>-->

                        <!--EMAIL:-->
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="email"><h4>Email</h4></label>
                                <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                            </div>
                        </div>

                        <!--DIA CHI:-->
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="email"><h4>Noi O: </h4></label>
                                <input type="email" class="form-control" id="location" placeholder="somewhere" title="enter a location">
                            </div>
                        </div>

                        <!--PASSWORD:--> 
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="password"><h4>Password</h4></label>
                                <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                            </div>
                        </div>

                        <!--                        <div class="form-group">
                                                    <div class="col-xs-6">
                                                        <label for="password2"><h4>Verify</h4></label>
                                                        <input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2.">
                                                    </div>
                                                </div>-->

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

                    <hr>
                    <form class="form" action="##" method="post" id="registrationForm">

                        <div class="form-group" >
                            <div class="col-xs-12" style = "display: block; background-color: greenyellow; height: 30px;;"  >
                                <div class ="col-md-7"  style = "display: block; background-color: orange;">
                                    <span>Chi tiet san pham</span>
                                </div>
                                <div class ="col-md-5"  style = "display: block; background-color: pink;">
                                    <div class ="col-md-6"  style = "display: block; background-color: blueviolet;">
                                        <span>Chi tiet san pham</span>
                                    </div>
                                    <div class ="col-md-6"  style = "display: block; background-color: wheat;">
                                        <span>Van Chuyen</span>
                                    </div>

                                </div>

                            </div>
                        </div>

                        <div class="form-group" >
                            <div class="col-xs-12" style = "display: block; background-color: red; height: 100px; "  >
                                <!--MaSP-->
                                <input type ="text" hidden name = "MaSP" value = "MaSP"></input>
                                <div class="col-md-3">
                                    <img class="img-fluid mx-auto d-block image" src="${pageContext.request.contextPath}/images/Logo.png">
                                </div>
                                <div class="col-md-4 product-name">
                                    <div class="product-name">
                                        <!--TenSP-->
                                        <a href="#">TenSP</a>
                                        <!--TSKT-->
                                        <div class="product-info">
                                            <div>Display: <span class="value">5 inch</span></div>
                                            <div>RAM: <span class="value">4GB</span></div>
                                            <div>Memory: <span class="value">32GB</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 quantity">
                                    <label for="quantity">Quantity:</label>
                                    <!--So Luong-->
                                    <input name = "quantity" id="quantity" type="number" value ="4" class="form-control quantity-input">
                                </div>
                                <div class="col-md-2 price">
                                    <!--Gia Thanh-->
                                    <span >Gia thanh</span>
                                    <span>12000</span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12" style = "display: block; background-color: yellow; height: 50px; "  >
                                    <div class="float-right">
                                        <form action ="checkOut" method ="GET" id ="checkOut" >
                                            <button type="button" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                                    style = "padding: 6px 8px;">Huy Don Hang</button>
                                           </form>
                                    </div>
                            </div>
                        </div>

                    </form>

                </div><!--/tab-pane-->


                <!--Cho Lay Hang:-->
                <div class="tab-pane" id="ChoLayHang">

                    <hr>
                    <form class="form" action="##" method="post" id="registrationForm">
                        <div class="form-group" >
                            <div class="col-xs-12" style = "display: block; background-color: red; height: 100px; margin: 5px 0px;"  >
                                <label for="first_name"><h4>First name</h4></label>
                                <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                            </div>
                        </div>

                        <div class="form-group" >
                            <div class="col-xs-12" style = "display: block; background-color: greenyellow; height: 100px; margin: 5px 0px;"  >
                                <label for="first_name"><h4>First name</h4></label>
                                <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12" style = "display: block; background-color: yellow; height: 100px; margin: 5px 0px;"  >
                                <label for="first_name"><h4>First name</h4></label>
                                <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success pull-right" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
                            </div>
                        </div>
                    </form>
                </div>

                <!--Da Giao-->
                <div class="tab-pane" id="DaGiao">

                    <hr>
                    <form class="form" action="##" method="post" id="registrationForm">
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="first_name"><h4>First name</h4></label>
                                <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="last_name"><h4>Last name</h4></label>
                                <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                            </div>
                        </div>

                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone"><h4>Phone</h4></label>
                                <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any.">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="mobile"><h4>Mobile</h4></label>
                                <input type="text" class="form-control" name="mobile" id="mobile" placeholder="enter mobile number" title="enter your mobile number if any.">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="email"><h4>Email</h4></label>
                                <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="email"><h4>Location</h4></label>
                                <input type="email" class="form-control" id="location" placeholder="somewhere" title="enter a location">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="password"><h4>Password</h4></label>
                                <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="password2"><h4>Verify</h4></label>
                                <input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2.">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success pull-right" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
                            </div>
                        </div>
                    </form>
                </div>


            </div><!--/tab-pane-->
        </div><!--/tab-content-->

    </div><!--/col-9-->
</div><!--/row-->
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