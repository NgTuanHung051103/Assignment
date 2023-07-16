<%-- 
    Document   : sideBar
    Created on : Jun 14, 2023, 10:42:47 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <ul class="sidebar navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="transition?transition=1">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Product</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="transition?transition=2">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Account</span></a>
            </li>

            <li class="nav-item">
                <button id="trangthai" onclick = "display()">
                    <span>Trang thai</span>
                </button>
                <div id="listtrangthai" style="display:none; background-color: wheat; color:black">
                        <a class="dropdown-item" href="transition?transition=3">Chờ xác nhận</a>
                        <a class="dropdown-item" href="transition?transition=4">Đang giao</a>
                        <a class="dropdown-item" href="transition?transition=5">Đã giao</a>
                        <a class="dropdown-item" href="transition?transition=6">Đã giao dịch</a>
                        <a class="dropdown-item" href="transition?transition=7">Trả lại hàng</a>
                </div>

             </li>
            
            
<!--            <li class="nav-item">
                <form>

                    <select name ="status">
                        <option><a class="nav-link" href="transition?transition=3">Chờ xác nhận</a></option>
                        <option value = "transition?transition=4">Đang giao</a></option>
                        <option><a class="nav-link" href="transition?transition=5">Đã giao</a></option>
                        <option><a class="nav-link" href="transition?transition=3">Đã giao dịch</a></option>
                        <option><a class="nav-link" href="transition?transition=3">Trả lại hàng</a></option>
                    </select>
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Trang thai</span></a>
                </form>
            </li>

<!--            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Trang thai
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="transition?transition=3">Chờ xác nhận</a>
                    <a class="dropdown-item" href="transition?transition=4">Đã giao dịch</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </div>-->

<!--                        <li class="nav-item">
                            <a class="nav-link" href="transition?transition=3">
                                <i class="fas fa-fw fa-folder"></i>
                                <span>Chờ xác nhận</span></a>
                        </li>
            
                        <li class="nav-item">
                            <a class="nav-link" href="transition?transition=4">
                                <i class="fas fa-fw fa-folder"></i>
                                <span>Đang giao</span></a>
                        </li>
            
                        <li class="nav-item">
                            <a class="nav-link" href="transition?transition=5">
                                <i class="fas fa-fw fa-folder"></i>
                                <span>Đã giao</span></a>
                        </li>
                        
                         <li class="nav-item">
                            <a class="nav-link" href="transition?transition=6">
                                <i class="fas fa-fw fa-folder"></i>
                                <span>Đã giao dịch</span></a>
                        </li>
                        
                         <li class="nav-item">
                            <a class="nav-link" href="transition?transition=7">
                                <i class="fas fa-fw fa-folder"></i>
                                <span>Trả lại hàng</span></a>
                        </li>-->

<!--                    <li class="nav-item">
                            <a class="nav-link" href="transition?transition=8">
                                <i class="fas fa-fw fa-folder"></i>
                                <span>Doanh Thu</span></a>
                        </li>-->

            <!--            <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-fw fa-folder"></i>
                                <span>Order</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                                <a class="dropdown-item" href="transition?transition=3">Cho Xac Nhan</a>
                                <a class="dropdown-item" href="transition?transition=4">Dang Giao</a>
                                <a class="dropdown-item" href="transition?transition=5">Da Giao</a>
                            </div>
                        </li>-->



            <!--                <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-fw fa-folder"></i>
                                    <span>Order</span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                                    <h6 class="dropdown-header">:</h6>
                                    <a class="dropdown-item" href="login.html">Login</a>
                                    <a class="dropdown-item" href="register.html">Register</a>
                                    <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
                                    <div class="dropdown-divider"></div>
                                    <h6 class="dropdown-header">Other Pages:</h6>
                                    <a class="dropdown-item" href="404.html">404 Page</a>
                                    <a class="dropdown-item" href="blank.html">Blank Page</a>
                                </div>
                            </li>-->

        </ul>
    </body>
    <script>
        function display(){
            var list = document.getElementById("listtrangthai");
            
            if( list.style.display === 'none'){
                console.log(1);
                list.style.display = 'block';
            } else {
                console.log(2);
                list.style.display = 'none';
            }
        }
    </script>
    
</html>
