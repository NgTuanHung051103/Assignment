<%-- 
    Document   : addProductModal
    Created on : Jun 17, 2023, 8:12:06 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .error {
                color: red;
            }

        </style>
    </head>
    <body>
        <!-- Modal -->
        <div class="modal fade" id="addProductModal" tabindex="-1" role="dialog" aria-labelledby="addProductModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addProductModalLabel">Add Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form id="addProductForm" action="addProduct" method="POST" enctype="multipart/form-data">
                            <!--Name-->
                            <div class="form-group">
                                <label for="name">Tên:</label>
                                <input type="text" class="form-control" id="nameInput" name="name">
                                <div id="nameError" class="error"></div>
                            </div>
                            <!--Price-->
                            <div class="form-group">
                                <label for="price">Giá:</label>
                                <input type="text" class="form-control" id="priceInput" name="price">
                                <div id="priceError" class="error"></div>
                            </div>
                            <!--Quantity-->
                            <div class="form-group">
                                <label for="quantity">Số Lượng:</label>
                                <input type="text" class="form-control" id="quantityInput" name="quantity">
                                <div id="quantityError" class="error"></div>
                            </div>

                            <!--Category-->
                            <div class="form-group">
                                <label for="category">Category: </label>
                                <div class="input-group">
                                    <select class="custom-select" id="categoryInput" name="category">
                                        <option value="">Chọn một tùy chọn</option>
                                        <c:forEach items ="${listCategories}" var="category">
                                            <option value="${category.getMaNhom()}">${category.getTenNhom()}</option>
                                        </c:forEach>
                                    </select>
                                    <div class="input-group-append">    
                                        <button class="btn btn-outline-secondary" type="button">Category</button>
                                    </div>
                                </div>
                                <div id="categoryError" class="error"></div>
                            </div>
                            <!--Image-->
                            <div class="form-group">
                                <label for="image">Image: </label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" >Upload</span>
                                    </div>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="image" name="image" onchange="displayImage(this)">
                                        <label class="custom-file-label">Choose file</label>
                                    </div>
                                </div>
                                <img id="previewImage" src="#" alt="Preview" style="display: none; max-width: 300px; max-height: 300px;">
                            </div>


                            <div class = "form-group" style = "display: none">
                                <!--Loai Quat-->
                                <div class="form-group">                               
                                    <label for="LoaiQuat">Loại Quạt:</label>
                                    <input type="text" class="form-control" id="LoaiQuatInput" name="LoaiQuat">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="DuongKinhQuat">Đường Kính Quạt:</label>
                                    <input type="text" class="form-control" id="DuongKinhQuatInput" name="DuongKinhQuat">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CheDoGio">Chế Độ Gió:</label>
                                    <input type="text" class="form-control" id="CheDoGioInput" name="CheDoGio">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="BangDieuKhien">Bảng Điều Khiển:</label>
                                    <input type="text" class="form-control" id="BangDieuKhienInput" name="BangDieuKhien">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="LoaiMotor">Loại Motor:</label>
                                    <input type="text" class="form-control" id="LoaiMotorInput" name="LoaiMotor">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="TienIch">Tiện ích:</label>
                                    <input type="text" class="form-control" id="TienIchInput" name="TienIch">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="KichThuocKhoiLuong">Kích thước khối lượng:</label>
                                    <input type="text" class="form-control" id="KichThuocKhoiLuongInput" name="KichThuocKhoiLuong">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="SoCanhQuat">Số cánh quạt:</label>
                                    <input type="text" class="form-control" id="SoCanhQuatInput" name="SoCanhQuat">
                                </div>
                            </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" form="addProductForm" onclick="validateForm()">Add</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function validateForm() {
                let name = $('#nameInput').val();
                let price = $('#priceInput').val();
                let quantity = $('#quantityInput').val();
                let category = $('#categoryInput').val();

                //xoá thông báo loi hien tai: goi den class
                $('.error').html('');

                if (name === '') {
                    $('#nameError').html('Name of product must not be empty');
                }

                if (price === '') {
                    $('#priceError').html('Price of product must not be empty');
                } else if (!$.isNumeric(price) || parseFloat(price) < 0) {
                    $('#priceError').html('Price of product must be digits and greater than 0');
                }

                if (quantity === '') {
                    $('#quantityError').html('Quantity of product must not be empty');
                } else if (!$.isNumeric(quantity) || parseInt(quantity) <= 0) {
                    $('#quantityError').html('Quantity of product must be digits and greater or equal than 0');
                }

                if (category === '') {
                    $('#categoryError').html('Category of product must not be empty');
                }

                // Kiểm tra nếu không có lỗi thì submit form
                let error = '';
                $('.error').each(function () {
                    error += $(this).html();
                });
                if (error === '') {
                    $('#addProductForm').submit();
                } else {
                    event.preventDefault();
                }
            }

//            let color = $('#colorInput');

            var Quat = document.getElementById("LoaiQuatInput").parentElement.parentElement;


            var categorySelect = document.getElementById("categoryInput");

            categorySelect.addEventListener("change", function () {
//                get value of selected tag
                var selectedCategory = categorySelect.value;

                // Check if the selected category requires color and material inputs
                if (parseInt(selectedCategory) === 1) {
                    // Show the color and material inputs
                    Quat.style.display = "block";

                } else {
                    // Hide the color and material inputs
                    // Show the color and material inputs
                    Quat.style.display = "none";
                }
            });



            function displayImage(input) {
                var previewImage = document.getElementById("previewImage");
                var file = input.files[0];
                var reader = new FileReader();

                reader.onload = function (e) {
                    previewImage.src = e.target.result;
                    previewImage.style.display = "block";
                }

                reader.readAsDataURL(file);
            }

        </script>
    </body>
</html>
