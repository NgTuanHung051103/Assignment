<%-- 
    Document   : checkOut
    Created on : Jul 7, 2023, 1:26:27 PM
    Author     : ptkng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!--css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/homepage/navbar.css">

        <!--boostrap-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

        <!--css Duc-->
        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        
        
        <style>
            .error {
                color: red;
            }

        </style>
        <title>JSP Page</title>
    </head>
    <body>

        <!-- Navbar-->
        <jsp:include page="../../${initParam['CommonHomepage']}/navbar.jsp" ></jsp:include>      
        <form action ="thanhtoan" method ="POST" id ="thanhtoanForm" >
            <div class="container">


                <!--THONG TIN KHACH HANG-->
            <c:set var="user" value="${requestScope.user}" />
            

            <div class="form-group">
                <h3>Thong Tin Khach Hang</h3>
            </div>
            <div class="content" style = "border: 1px solid #15b728; padding: 15px;">
                <!--THONG TIN KHACH HANG-->
                <div class="row" style =" display: flex; justify-content: center;    " >
                    <div class="col-md-12 col-lg-4" >

                        <div class="form-group" style = "display: none">
                            <label for="">ID: </label>
                            <input type="text"name="ID"
                                   value = "${user.getID()}" >
                        </div>
                        <div class="form-group" style = "display: none">
                            <label for="">order_txt </label>
                            <input type="text"name="order_txt"
                                   value = "${requestScope.txt}" >
                        </div>
                 <!--TEN-->
                        <div class="form-group">
                            <label for="nameInput">Tên: </label>
                            <input type="text" class="form-control" 
                                   id="nameInput" name="nameInput"
                                   value = "${user.getTen()}">
                            <div id="nameError" class="error"></div>
                        </div>
                    <!--SO DIEN THOAI-->        
                        <div class="form-group">
                            <label for="SDTInput">Sdt: </label>
                            <input type="text" class="form-control" 
                                   id="SDTInput" name="SDTInput"
                                   value = "${user.getSDT()}">
                            <div id="SDTError" class="error"></div>
                        </div>
                    </div>
                   <!--EMAIL-->
                    <div class="col-md-12 col-lg-4" style = "">
                        <div class="form-group">
                            <label for="EmailInput">Email:</label>
                            <input type="text" class="form-control"
                                   id="EmailInput" name="EmailInput"
                                   value = "${user.getEmail()}">
                            <div id="EmailError" class="error"></div>
                        </div>
                    <!--DIA CHI-->
                        <div class="form-group">
                            <label for="DiaChiInput">Địa chỉ:</label>
                            <input type="text" class="form-control"
                                   id="DiaChiInput" name="DiaChiInput"
                                   value = "${user.getDiaChi()}">
                            <div id="DiaChiError" class="error"></div>
                        </div>
                    </div>
                </div>

                            
                <!--THONG TIN ORDER-->
               
                    <!--TIEU DE-->
                <div class="row" style =" display: flex; justify-content: center;      " >
                        <div class="col-md-9" style ="align-content: center; text-align: center; ">
                            <div class="info">
                                <div class="row">
                                    <div class="col-md-5 product-name">
                                        <div class="product-name">
                                            <h4>Tên sản phẩm</h4>
                                        </div>
                                    </div>
                                    <div class="col-md-3 quantity">
                                        <h4>Số lượng</h4>
                                    </div>
                                    <div class="col-md-3 price">
                                        <!--Gia Thanh-->
                                        <h4>Thành tiền</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                
                    <!--NOI DUNG-->
                <div class="row" style =" display: flex; justify-content: center;      " >
                    <c:forEach var = "order" items = "${requestScope.data}">
                        <c:set var="total" value="${total +order.getGiaThanh()*order.getSoLuong()}" />
                        <!--DETAIL-->
                        <div class="col-md-9" style ="align-content: center; text-align: center; ">
                            <div class="info">
                                <div class="row">
                                    <div class="col-md-5 product-name">
                                        <div class="product-name">
                                            <!--TenSP-->
                                            ${order.getSanPham().getTenSP()}
                                        </div>
                                    </div>
                                    <div class="col-md-3 quantity">
                                        ${order.getSoLuong()}
                                    </div>
                                    <div class="col-md-3 price">
                                        <!--Gia Thanh-->
                                        <span >${order.getGiaThanh()}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                    <div class="summary-item" style="margin: 40px 0px 20px 0px;    text-align: center; font-size: 30px">
                      <span class="text">Total</span>
                      <span class="price">${total} VNÐ</span>
                  </div>
            </div>

           
                            
            <!--HINH THUC THANH TOAN-->
            <div class="content">
                <div class="row">
                    <div class="col-md-12 col-lg-4">
                    </div>
                    <div class="col-md-12 col-lg-4" style = "display:block; border: 1px solid #15b728; padding: 15px;">
                        <div class="form-group">
                            <h3>Chi tiết thanh toán</h3>
                        </div>
                        ------------------------------------------------------
                        <div class="form-group">
                            <label for="hinhthucthanhtoan">Chọn hình thức thanh toán </label>
                            <div class="input-group">
                                <select class="custom-select" id="hinhthucthanhtoan" name="hinhthucthanhtoan">
                                    <option value="1">Thanh toán truc tiep</option>
                                    <option value="2">Internet Banking</option>
                                </select>
                            </div>
                            <div id="categoryError" class="error"></div>
                        </div>

                        <div class = "form-group " style = "display: none; text-align: center">
                            <!--Loai Quat-->
                            <img id = "QR"class="QR" src="${pageContext.request.contextPath}/images/QR.png" alt="">
                        </div>

                    </div>
                    <div class="col-md-12 col-lg-4">
                    </div>
                </div>
            </div>

            <!--BUTTON THANH TOAN-->
            <div class="content">
                <div class="row">
                    <div class="col-md-12 col-lg-4">
                    </div>
                    <div class="col-md-12 col-lg-4">
                       
                            <button type="submit" class="btn btn-success btn-lg btn-block" 
                                    onclick="validateForm()"
                                    >Thanh Toán</button>
                             <input type = "text" value ="${total}" name = "TotalPrice" style ="display: none">
                        </form>
                    </div>
                    <div class="col-md-12 col-lg-4">
                    </div>
                </div>               
            </div>         
          </form>              
        </div> 
    </body>

    <script>
//        CODE HIEN THI MAQR
//        httt: hinhthucthanhtoan
        var httt = document.getElementById("hinhthucthanhtoan");

        httt.addEventListener("change", function () {

//                get value of selected tag
            var selectedhttt = httt.value;
            // Check if the selected category requires color and material inputs
            if (parseInt(selectedhttt) === 2) {
                // Show the color and material inputs
                (document.getElementById("QR").parentElement).style.display = "block";
            } else {
                (document.getElementById("QR").parentElement).style.display = "none";
            }
        });
        
//        CODE DE Nhap full thong tin neu thieu
        function validateForm() {
                let name = $('#nameInput').val();
                let SDT = $('#SDTInput').val();
                let Email = $('#EmailInput').val();
                let DiaChi = $('#DiaChiInput').val();

                console.log(name +  SDT);
//          xoá thông báo loi hien tai: goi den class
                $('.error').html('');

                if (name === '') {
                    $('#nameError').html('VUI LONG NHAP TEN');
                }
                
                if (SDT === '') {
                    $('#SDTError').html('VUI LONG NHAP SO DIEN THOAI ');
                }
                
                if (Email === '') {
                    $('#EmailError').html('VUI LONG NHAP Email');
                }
                
                if (DiaChi === '') {
                    $('#DiaChiError').html('VUI LONG NHAP DIA CHI ');
                }

                // Kiểm tra nếu không có lỗi thì submit form
                let error = '';
                $('.error').each(function () {
                    error += $(this).html();
                });
                 if (error === '') {
                    $('#thanhtoanForm').submit();
                } else {
                    event.preventDefault();
                }
            }
         </script>
        
           <!-- Bootstrap core JavaScript-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
                integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        
   
</html>
