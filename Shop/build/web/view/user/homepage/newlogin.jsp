<%-- 
    Document   : newlogin
    Created on : Jul 16, 2023, 12:32:04 PM
    Author     : ptkng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/homepage/newlogin.css">
        <<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>

    </head>
    <body>
        <div class ="row">
            <div class="col-md-6 mx-auto p-0">
                <div class="card">
                    <div class="login-box">
                        <div class="login-snip">
                            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Login</label>
                            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                            <div class="login-space">
                                <div class="login">
                                    <form action="${pageContext.request.contextPath}/loginServlet" method="POST">
                                        <div class="group">
                                            <label for="user" class="label">Tên dang nhap</label>
                                            <input id="user" name = "fullname_Login" type="text" class="input"  placeholder="VD: NgTuanHung">
                                            <span class="form-message"></span>

                                        </div>
                                        <div class="group">
                                            <label for="pass" class="label">Mật khẩu</label>
                                            <input id="pass"  name="password_Login" type="password" class="input" data-type="password" placeholder="Nhập mật khẩu">
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="group">
                                            <input type="submit" class="button" value="Đăng nhập">
                                        </div>
                                    </form>
                                </div>
                                <div class="sign-up-form">
                                    <form action="${pageContext.request.contextPath}/signupServlet" method="POST">
                                    <div class="group">
                                        <label for="user" class="label">Tên đăng nhập</label>
                                        <input id="user" name="fullname"type="text" class="input" placeholder="VD: NgTuanHung">
                                        <span class="form-message"></span>
                                    </div>
                                    
                                    <div class="group">
                                        <label for="pass" class="label">Mật khẩu</label>
                                        <input id="pass" name="password" type="password" class="input" data-type="password" placeholder="Nhập mật khẩu">
                                    </div>
                                    <div class="group">
                                        <label for="pass" class="label">Nhập lại mật khẩu</label>
                                        <input id="pass" type="password" name="password_confirmation" class="input" data-type="password" placeholder="Nhập lại mật khẩu" >
                                    </div>
                                    <div class="group">
                                        <input type="submit" class="button" value="Đăng ký">
                                    </div>
                                    <div class="hr"></div>
                                    <div class="foot">
                                        <label for="tab-1">đã có tài khoản</label>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>   
                </div>
            </div>
        </div>

    </body>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</html>
