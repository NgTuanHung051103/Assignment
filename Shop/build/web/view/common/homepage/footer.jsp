<%-- 
    Document   : footer
    Created on : 04/06/2023, 3:25:01 PM
    Author     : NgTua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/fontawesome-free-6.4.0-web/css/all.min.css">
    <!-- Css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/footer.css">

 <!-- Bootrap -->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <section class = "section-footer">
            <footer class="footer-distributed">
            <div class="footer-left">
                <h3>Company<span>logo</span></h3>
                <p class="footer-links">
                    <a href="#">Home</a>
                    <a href="#">Blog</a>
                    <a href="#">Pricing</a>
                    <a href="#">About</a>
                    <a href="#">Faq</a>
                    <a href="#">Contact</a>
                </p>
                <p class="footer-company-name">Company Name © 2015</p>
                <div class="footer-icons">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-github"></i></a>
                </div>
            </div>
            <div class="footer-right">
                <p>Contact Us</p>
                <form action="#" method="post">
                    <input type="text" name="email" placeholder="Email">
                    <textarea name="message" placeholder="Message"></textarea>
                    <button>Send</button>
                </form>
            </div>
        </footer>
        </section>
        
    </body>
</html>
