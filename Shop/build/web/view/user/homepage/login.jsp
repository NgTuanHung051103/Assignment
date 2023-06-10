<%-- 
    Document   : login
    Created on : 05/06/2023, 7:55:15 AM
    Author     : NgTua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Bootrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!-- Css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/homepage/login.css">

    </head>
    <body>
        <div class="formLoginSignUp">
            <form action="" method="POST" class="form" id="form-1">
                <h3 class="heading">Đăng ký</h3>
                <p class="desc">Cùng vui nào ❤️</p>

                <div class="spacer"></div>

                <div class="form-group">
                    <label for="fullname" class="form-label">Tên đăng nhập</label>
                    <input id="fullname" name="fullname" type="text" placeholder="VD: NgTuanHung" class="form-control">
                    <span class="form-message"></span>
                </div>

                <!-- <div class="form-group">
                    <label for="email" class="form-label">Email</label>
                    <input id="email" name="email" type="text" placeholder="VD: email@domain.com" class="form-control">
                    <span class="form-message"></span>
                </div> -->

                <div class="form-group">
                    <label for="password" class="form-label">Mật khẩu</label>
                    <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control">
                    <span class="form-message"></span>
                </div>

                <div class="form-group">
                    <label for="password_confirmation" class="form-label">Nhập lại mật khẩu</label>
                    <input id="password_confirmation" name="password_confirmation" placeholder="Nhập lại mật khẩu" type="password" class="form-control">
                    <span class="form-message"></span>
                </div>

                <button class="form-submit">Đăng ký</button>
            </form>

            <form action="${pageContext.request.contextPath}/loginServlet" method="POST" class="form" id="form-2">
                <h3 class="heading">Đăng nhập</h3>
                <p class="desc">Cùng vui nào ❤️</p>
                 <p class="desc">${mess}</p>
                <div class="spacer"></div>

                <!-- <div class="form-group">
                    <label for="email" class="form-label">Email</label>
                    <input id="email" name="email" type="text" placeholder="VD: email@domain.com" class="form-control">
                    <span class="form-message"></span>
                </div> -->

                <div class="form-group">
                    <label for="fullname" class="form-label">Tên dang nhap</label>
                    <input id="fullname" name="fullname" type="text" placeholder="VD: NgTuanHung" class="form-control">
                    <span class="form-message"></span>
                </div>

                <div class="form-group">
                    <label for="password" class="form-label">Mật khẩu</label>
                    <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control">
                    <span class="form-message"></span>
                </div>

                <button class="form-submit">Đăng nhập</button>
            </form>

        </div>

        <script src="${pageContext.request.contextPath}/javascript/user/homepage/validate.js"></script>
        <script>

            document.addEventListener('DOMContentLoaded', function () {
                // Mong muốn của chúng ta
                Validator({
                    form: '#form-1',
                    formGroupSelector: '.form-group',
                    errorSelector: '.form-message',
                    rules: [
                        Validator.isRequired('#fullname', 'Vui lòng nhập tên đầy đủ của bạn'),
                        // Validator.isEmail('#email'),
                        Validator.minLength('#password', 6),
                        Validator.isRequired('#password_confirmation'),
                        Validator.isConfirmed('#password_confirmation', function () {
                            return document.querySelector('#form-1 #password').value;
                        }, 'Mật khẩu nhập lại không chính xác')
                    ],
                    onSubmit: function (data) {
                        // Call API
                        console.log(data);
                    }
                });


                Validator({
                    form: '#form-2',
                    formGroupSelector: '.form-group',
                    errorSelector: '.form-message',
                    rules: [
                        // Validator.isEmail('#email'),
                        Validator.isRequired('#fullname', 'Vui lòng nhập tên đầy đủ của bạn'),
                        Validator.minLength('#password', 6),
                    ],
                    onSubmit: function (data) {
                        // Call API
                        console.log(data);
                    }
                });
            });

        </script>
    </body>
</html>
