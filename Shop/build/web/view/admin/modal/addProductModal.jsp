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
                        <form id="addProductForm" action="addSanPham" method="POST" enctype="multipart/form-data">
                            
                            <!--Name-->
                            <div class="form-group">
                                <label for="nameInput">Tên:</label>
                                <input type="text" class="form-control" id="nameInput" name="name">
                                <div id="nameError" class="error"></div>
                            </div>
                            
                             <!--Thuong hieu-->
                            <div class="form-group">
                                <label for="thuonghieuInput">Thương Hiệu:</label>
                                <input type="text" class="form-control" id="thuonghieuInput" name="thuonghieu">
                                <div id="thuonghieuError" class="error"></div>
                            </div>
                            
                            <!--Price-->
                            <div class="form-group">
                                <label for="priceInput">Giá:</label>
                                <input type="text" class="form-control" id="priceInput" name="price">
                                <div id="priceError" class="error"></div>
                            </div>
                            
                            <!--Quantity-->
                            <div class="form-group">
                                <label for="quantityInput">Số Lượng:</label>
                                <input type="text" class="form-control" id="quantityInput" name="quantity">
                                <div id="quantityError" class="error"></div>
                            </div>

                            <!--Category-->
                            <div class="form-group">
                                <label for="categoryInput">Category: </label>
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

                            <!--TSKT QUAT:--> 
                            <div class = "form-group " style = "display: none">
                                <!--Loai Quat-->
                                <div class="form-group">                               
                                    <label for="LoaiQuatInput">Loại Quạt:</label>
                                    <input type="text" class="form-control" id="LoaiQuatInput" name="LoaiQuat">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="DuongKinhQuatInput">Đường Kính Quạt:</label>
                                    <input type="text" class="form-control" id="DuongKinhQuatInput" name="DuongKinhQuat">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CheDoGioInput">Chế Độ Gió:</label>
                                    <input type="text" class="form-control" id="CheDoGioInput" name="CheDoGio">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="BangDieuKhienInput">Bảng Điều Khiển:</label>
                                    <input type="text" class="form-control" id="BangDieuKhienInput" name="BangDieuKhien">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="LoaiMotorInput">Loại Motor:</label>
                                    <input type="text" class="form-control" id="LoaiMotorInput" name="LoaiMotor">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="TienIch1Input">Tiện ích:</label>
                                    <input type="text" class="form-control" id="TienIch1Input" name="TienIch1">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="KichThuocKhoiLuong1Input">Kích thước khối lượng:</label>
                                    <input type="text" class="form-control" id="KichThuocKhoiLuong1Input" name="KichThuocKhoiLuong1">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="SoCanhQuatInput">Số cánh quạt:</label>
                                    <input type="text" class="form-control" id="SoCanhQuatInput" name="SoCanhQuat">
                                </div>
                            </div>

                            <!--TSKT DIEU HOA-->
                            <div class = "form-group " style = "display: none">
                                <!--Loai Quat-->
                                <div class="form-group">                               
                                    <label for="LoaiMayInput">Loại Máy:</label>
                                    <input type="text" class="form-control" id="LoaiMayInput" name="LoaiMay">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongSuatInput">Công Suất:</label>
                                    <input type="text" class="form-control" id="CongSuatInput" name="CongSuat">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="PhamViInput">Phạm Vi:</label>
                                    <input type="text" class="form-control" id="PhamViInput" name="PhamVi">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="KhuKhuanInput">Khử Khuẩn:</label>
                                    <input type="text" class="form-control" id="KhuKhuanInput" name="KhuKhuan">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheTietKiemDien2Input">Công Nghệ Tích Kiệm Điện:</label>
                                    <input type="text" class="form-control" id="CongNgheTietKiemDien2Input" name="CongNgheTietKiemDien2">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="LamLanhNhanhInput">Làm Lạnh Nhanh:</label>
                                    <input type="text" class="form-control" id="LamLanhNhanhInput" name="LamLanhNhanh">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="TienIchInput">Tiện Ích:</label>
                                    <input type="text" class="form-control" id="TienIchInput" name="TienIch">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="TieuThuDienInput">Tiêu Thụ Điện:</label>
                                    <input type="text" class="form-control" id="TieuThuDienInput" name="TieuThuDien">
                                </div>
                                
                                <div class="form-group" >                               
                                    <label for="DanLanhInput">Dàn Lạnh:</label>
                                    <input type="text" class="form-control" id="DanLanhInput" name="DanLanh">
                                </div>
                                
                                <div class="form-group" >                               
                                    <label for="DanNongInput">Dàn Nóng:</label>
                                    <input type="text" class="form-control" id="DanNongInput" name="DanNong">
                                </div>
                            </div>
                            
                            <!--TSKT TU LANH-->
                            <div class = "form-group " style = "display: none">
                                <!--Loai Quat-->
                                <div class="form-group">                               
                                    <label for="KieuTuInput">Kiểu Tủ:</label>
                                    <input type="text" class="form-control" id="KieuTuInput" name="KieuTu">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="DungTichInput">Dung Tích:</label>
                                    <input type="text" class="form-control" id="DungTichInput" name="DungTich">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheTietKiemDien3Input">Công Nghệ Tiết Kiệm Điện:</label>
                                    <input type="text" class="form-control" id="CongNgheTietKiemDien3Input" name="CongNgheTietKiemDien3">
                                </div>
                                
                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheLamLanhInput">Công Nghệ Làm Lạnh:</label>
                                    <input type="text" class="form-control" id="CongNgheLamLanhInput" name="CongNgheLamLanh">
                                </div>
                                
                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheKhangKhuanKhuMuiInput">Công Nghệ Khánh Khuẩn Khử Mùi:</label>
                                    <input type="text" class="form-control" id="CongNgheKhangKhuanKhuMuiInput" name="CongNgheKhangKhuanKhuMui">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheBaoQuanThucPhamInput">Công Nghệ Bảo Quản Thực Phẩm:</label>
                                    <input type="text" class="form-control" id="CongNgheBaoQuanThucPhamInput" name="CongNgheBaoQuanThucPham">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="KichThuocKhoiLuong3Input">Kích Thước Khối Lượng:</label>
                                    <input type="text" class="form-control" id="KichThuocKhoiLuong3Input" name="KichThuocKhoiLuong3">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="TienIch3Input">Tiện Ích:</label>
                                    <input type="text" class="form-control" id="TienIch3Input" name="TienIch3">
                                </div>
                            </div>
                            
                            <!--TSKT TIVI-->
                            <div class = "form-group " style = "display: none">
                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="LoaiTVInput">Loại Tivi:</label>
                                    <input type="text" class="form-control" id="LoaiTVInput" name="LoaiTV">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="UngDungInput">Ứng Dụng:</label>
                                    <input type="text" class="form-control" id="UngDungInput" name="UngDung">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheHinhAnhInput">Công Nghệ Hình Ảnh:</label>
                                    <input type="text" class="form-control" id="CongNgheHinhAnhInput" name="CongNgheHinhAnh">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="DieuKhienBangGiongNoiInput">Điều Khiển Bằng Giọng Nói:</label>
                                    <input type="text" class="form-control" id="DieuKhienBangGiongNoiInput" name="DieuKhienBangGiongNoi">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="RemoteThongMinhInput">Remote Thông Minh:</label>
                                    <input type="text" class="form-control" id="RemoteThongMinhInput" name="RemoteThongMinh">
                                </div>
                                
                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="PhanChieuInput">Phản Chiếu:</label>
                                    <input type="text" class="form-control" id="PhanChieuInput" name="PhanChieu">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="KichThuocInput">Kích Thước:</label>
                                    <input type="text" class="form-control" id="KichThuocInput" name="KichThuoc">
                                </div>
                            </div>
                            
                        </form>
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
                let thuonghieu = $('#thuonghieuInput').val();
                let price = $('#priceInput').val();
                let quantity = $('#quantityInput').val();
                let category = $('#categoryInput').val();

//          xoá thông báo loi hien tai: goi den class
                $('.error').html('');

                if (name === '') {
                    $('#nameError').html('Name of product must not be empty');
                }
                
                if (thuonghieu === '') {
                    $('#thuonghieuError').html('ThuongHieu of product must not be empty');
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
            var DieuHoa = document.getElementById("LoaiMayInput").parentElement.parentElement;
            var TuLanh = document.getElementById("KieuTuInput").parentElement.parentElement;
            var Tivi = document.getElementById("LoaiTVInput").parentElement.parentElement;
            
            var categorySelect = document.getElementById("categoryInput");

            categorySelect.addEventListener("change", function () {
//                get value of selected tag
                var selectedCategory = categorySelect.value;

                // Check if the selected category requires color and material inputs
                if (parseInt(selectedCategory) === 1) {
                    // Show the color and material inputs
                    Quat.style.display = "block";
                    DieuHoa.style.display = "none";
                    TuLanh.style.display = "none";
                    Tivi.style.display = "none";
                }
                
                else if (parseInt(selectedCategory) === 2) {
                    // Show the color and material inputs
                    Quat.style.display = "none";
                    DieuHoa.style.display = "block";
                    TuLanh.style.display = "none";
                    Tivi.style.display = "none";
                }
                
                else if (parseInt(selectedCategory) === 3) {
                    // Show the color and material inputs
                    Quat.style.display = "none";
                    DieuHoa.style.display = "none";
                    TuLanh.style.display = "block";
                    Tivi.style.display = "none";
                }
                
                else if (parseInt(selectedCategory) === 4) {
                    // Show the color and material inputs
                    Quat.style.display = "none";
                    DieuHoa.style.display = "none";
                    TuLanh.style.display = "none";
                    Tivi.style.display = "block";
                }
                else {
                    Quat.style.display = "none";
                    DieuHoa.style.display = "none";
                    TuLanh.style.display = "none";
                    Tivi.style.display = "none";
                }
            });


//            Xu ly them anh
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
