<%-- 
    Document   : login
    Created on : Jun 5, 2023, 3:05:39 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- Options -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Title -->
        <title>QC Select</title>

        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/user/homepage/login.css">

        <!-- Font -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&family=Raleway:wght@500&display=swap');
        </style>

    </head>
    <body>

        <main class="auth_temp">
            <div id="auth_wrapper">
                <a href="home">
                    <h3><span>QC</span>Select</h3> 
                </a>
                <div class="form_container sign_in_form">
                    <form action="${pageContext.request.contextPath}/loginServlet" method="POST">
                        <h1>Sign In</h1>
                        <div class="input_item">
                            <label class="fa-solid fa-envelope"></label>
                            <input type="text" placeholder="Username" name="fullname_Login" id="LoginUsername" value="" required=""/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-lock"></label>
                            <input type="password" placeholder="Password" name="password_Login" id="LoginPassword" value="" required=""/>
                        </div>
<!--                  <div class="group" style="margin-right: 75px">
                            <input id="check check" type="checkbox" class="check" name="remember" style="accent-color: #E49393; ">
                            <label for="check" style="font-size: 13px;"><span class="icon"></span> Keep me signed in</label>
                        </div>-->
                        <div id="errLogin" style="color:red ;font-size:12px; " >${requestScope.messLogin}</div>                        
                        <button type="submit" onclick = "checkLogin()">Sign In</button>
                        <!--<a href="#">Forgot your password?</a>-->
<!--                        <div class="social_container" style="margin-top: 5px">
                            <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        </div>-->
                    </form>
                </div>
                <div class="form_container sign_up_form">
                    <form action="${pageContext.request.contextPath}/signupServlet" method="POST">
                        <h1>Create Account</h1>
                        <div class="input_item">
                            <label for="username" class="fa-solid fa-user"></label>
                            <input type="text" placeholder="Username" name="SignUpUsername" required=""/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-lock"></label>
                            <input type="password" placeholder="Password" name="SignUpPassword" required=""/>
                        </div>
                        <div class="input_item">
                            <label class="fa-solid fa-lock"></label>
                            <input type="password" placeholder="Password" name="ReInputPassword" required=""/>
                        </div>
                        <div id="errSignUp" style="color:red ;font-size:12px" >${messSignUp}</div>
                        <button type="submit">Sign Up</button>
                    </form>
                </div>
                <div class="overlay_container">
                    <div class="overlay">
                        <div class="overlay_section section_right">
                            <h1>Hello, Friend!</h1>
                            <p>Enter your personal details and start journey with us</p>      
                            <button class="btn_show" id="signUp">Sign Up</button>
                        </div>
                        <div class="overlay_section section_left">
                            <h1>Welcome Back!</h1>
                            <p>To keep connected with us please login with your personal info</p>
                            <button class="btn_show" id="signIn">Sign In</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>

    </body>
    <script>
        const signUpButton = document.getElementById('signUp');
        const signInButton = document.getElementById('signIn');
        const auth_wrapper = document.getElementById('auth_wrapper');
        var errLogin = document.getElementById("errLogin");
        var errSignUp = document.getElementById("errSignUp");
        
//       thuc hien khi da dang ky va tra ve mess thi hien thi phai dang o signup
        if(errSignUp.innerHTML !== ""){
             auth_wrapper.classList.add("overlay_right_active");
        }
        
        signUpButton.addEventListener('click', () => {
//            if (document.getElementById("err").value !== "") {
////                document.getElementById("err").value = "";
//                auth_wrapper.classList.remove("overlay_right_active");
//            }
            auth_wrapper.classList.add("overlay_right_active");
            errLogin.style.display = "none";
        });
        signInButton.addEventListener('click', () => {
            auth_wrapper.classList.remove("overlay_right_active");
            errLogin.style.display = "block";
        });
        
        
        
        
//        function error(){
//        $.ajax({
//                url: "/GoodsKpopStore/register",
//                type: "post",
//                success: function(error2){
//                var err2 = document.getElementById("err");
//                        err2
//                }
//        }


    </script>
    <script src="https://kit.fontawesome.com/756da913d7.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</html>
