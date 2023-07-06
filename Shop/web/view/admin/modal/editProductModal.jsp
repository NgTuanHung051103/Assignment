<%-- 
    Document   : editProductModal
    Created on : Jun 21, 2023, 8:44:14 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

      <div class="modal fade" id="editProductModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editProductModalLabel">Edit Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form id="editProductForm" action="editSanPham" method="POST" enctype="multipart/form-data">
                              <!--id-->
                            <div class="form-group" style="display: none">
                                <input type="text" class="form-control" id="MaSPEdit" name="MaSPEdit" />
                            </div>
                            
                            <!--Name-->
                            <div class="form-group">
                                <label for="nameEdit">Tên:</label>
                                <input type="text" class="form-control" id="nameEdit" name="nameEdit">
                                <div id="nameEditError" class="error"></div>
                            </div>
                            
                             <!--Thuong hieu-->
                            <div class="form-group">
                                <label for="brandEdit">Thương Hiệu:</label>
                                <input type="text" class="form-control" id="brandEdit" name="brandEdit">
                                <div id="brandEditError" class="error"></div>
                            </div>
                            
                            <!--Price-->
                            <div class="form-group">
                                <label for="priceEdit">Giá:</label>
                                <input type="text" class="form-control" id="priceEdit" name="priceEdit">
                                <div id="priceEditError" class="error"></div>
                            </div>
                            
                            <!--Quantity-->
                            <div class="form-group">
                                <label for="quantityEdit">Số Lượng:</label>
                                <input type="text" class="form-control" id="quantityEdit" name="quantityEdit">
                                <div id="quantityEditError" class="error"></div>
                            </div>

                            <!--Category-->
                            <div class="form-group">
                                <label for="categoryEdit">Category: </label>
                                <div class="input-group">
                                    <select class="custom-select" id="categoryEdit" name="categoryEdit">
                                        <option value="">Chọn một tùy chọn</option>
                                        <c:forEach items ="${listCategories}" var="category">
                                                <option value="${category.getMaNhom()}">${category.getTenNhom()}</option>
                                        </c:forEach>
                                    </select>
                                    <div class="input-group-append">    
                                        <button class="btn btn-outline-secondary" type="button">Category</button>
                                    </div>
                                </div>
                                <div id="categoryEditError" class="error"></div>
                            </div>
                            
                            <!--Image-->
                            <div class="form-group">
                                <label for="imageEdit">Image: </label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" >Upload</span>
                                    </div>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="imageEdit" name="imageEdit" onchange="displayImage2(this)">
                                        <label class="custom-file-label">Choose file</label>
                                    </div>
                                </div>
                                <img id="previewImageEdit" src="#" alt="Preview" style="display: none; max-width: 300px; max-height: 300px;">
                            </div>

                   <!--TSKT QUAT:--> 
                            <div class = "form-group " style = "display: none">
                                
                                <!--Loai Quat-->
                                <div class="form-group">                               
                                    <label for="LoaiQuatEdit">Loại Quạt:</label>
                                    <input type="text" class="form-control" id="LoaiQuatEdit" name="LoaiQuatEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="DuongKinhQuatEdit">Đường Kính Quạt:</label>
                                    <input type="text" class="form-control" id="DuongKinhQuatEdit" name="DuongKinhQuatEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CheDoGioEdit">Chế Độ Gió:</label>
                                    <input type="text" class="form-control" id="CheDoGioEdit" name="CheDoGioEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="BangDieuKhienEdit">Bảng Điều Khiển:</label>
                                    <input type="text" class="form-control" id="BangDieuKhienEdit" name="BangDieuKhienEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="LoaiMotorEdit">Loại Motor:</label>
                                    <input type="text" class="form-control" id="LoaiMotorEdit" name="LoaiMotorEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="TienIch1Edit">Tiện ích:</label>
                                    <input type="text" class="form-control" id="TienIch1Edit" name="TienIch1Edit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="KichThuocKhoiLuong1Edit">Kích thước khối lượng:</label>
                                    <input type="text" class="form-control" id="KichThuocKhoiLuong1Edit" name="KichThuocKhoiLuong1Edit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="SoCanhQuatEdit">Số cánh quạt:</label>
                                    <input type="text" class="form-control" id="SoCanhQuatEdit" name="SoCanhQuatEdit">
                                </div>
                            </div>

                   <!--TSKT DIEU HOA-->
                            <div class = "form-group " style = "display: none">
                                <!--Loai Quat-->
                                <div class="form-group">                               
                                    <label for="LoaiMayEdit">Loại Máy:</label>
                                    <input type="text" class="form-control" id="LoaiMayEdit" name="LoaiMayEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongSuatEdit">Công Suất:</label>
                                    <input type="text" class="form-control" id="CongSuatEdit" name="CongSuatEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="PhamViEdit">Phạm Vi:</label>
                                    <input type="text" class="form-control" id="PhamViEdit" name="PhamViEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="KhuKhuanEdit">Khử Khuẩn:</label>
                                    <input type="text" class="form-control" id="KhuKhuanEdit" name="KhuKhuanEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheTietKiemDien2Edit">Công Nghệ Tích Kiệm Điện:</label>
                                    <input type="text" class="form-control" id="CongNgheTietKiemDien2Edit" name="CongNgheTietKiemDien2Edit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="LamLanhNhanhEdit">Làm Lạnh Nhanh:</label>
                                    <input type="text" class="form-control" id="LamLanhNhanhEdit" name="LamLanhNhanhEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="TienIchEdit">Tiện Ích:</label>
                                    <input type="text" class="form-control" id="TienIchEdit" name="TienIchEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="TieuThuDienEdit">Tiêu Thụ Điện:</label>
                                    <input type="text" class="form-control" id="TieuThuDienEdit" name="TieuThuDienEdit">
                                </div>
                                
                                <div class="form-group" >                               
                                    <label for="DanLanhEdit">Dàn Lạnh:</label>
                                    <input type="text" class="form-control" id="DanLanhEdit" name="DanLanhEdit">
                                </div>
                                
                                <div class="form-group" >                               
                                    <label for="DanNongEdit">Dàn Nóng:</label>
                                    <input type="text" class="form-control" id="DanNongEdit" name="DanNongEdit">
                                </div>
                            </div>
                            
                   <!--TSKT TU LANH-->
                            <div class = "form-group " style = "display: none">
                                <!--Loai Quat-->
                                <div class="form-group">                               
                                    <label for="KieuTuEdit">Kiểu Tủ:</label>
                                    <input type="text" class="form-control" id="KieuTuEdit" name="KieuTuEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="DungTichEdit">Dung Tích:</label>
                                    <input type="text" class="form-control" id="DungTichEdit" name="DungTichEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheTietKiemDien3EditEdit">Công Nghệ Tiết Kiệm Điện:</label>
                                    <input type="text" class="form-control" id="CongNgheTietKiemDien3Edit" name="CongNgheTietKiemDien3Edit">
                                </div>
                                
                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheLamLanhEdit">Công Nghệ Làm Lạnh:</label>
                                    <input type="text" class="form-control" id="CongNgheLamLanhEdit" name="CongNgheLamLanhEdit">
                                </div>
                                
                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheKhangKhuanKhuMuiEdit">Công Nghệ Khánh Khuẩn Khử Mùi:</label>
                                    <input type="text" class="form-control" id="CongNgheKhangKhuanKhuMuiEdit" name="CongNgheKhangKhuanKhuMuiEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheBaoQuanThucPhamEdit">Công Nghệ Bảo Quản Thực Phẩm:</label>
                                    <input type="text" class="form-control" id="CongNgheBaoQuanThucPhamEdit" name="CongNgheBaoQuanThucPham">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="KichThuocKhoiLuong3Edit">Kích Thước Khối Lượng:</label>
                                    <input type="text" class="form-control" id="KichThuocKhoiLuong3Edit" name="KichThuocKhoiLuong3Edit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="TienIch3">Tiện Ích:</label>
                                    <input type="text" class="form-control" id="TienIch3Edit" name="TienIch3">
                                </div>
                            </div>
                            
                    <!--TSKT TIVI-->
                            <div class = "form-group " style = "display: none">
                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="LoaiTVEdit">Loại Tivi:</label>
                                    <input type="text" class="form-control" id="LoaiTVEdit" name="LoaiTVEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="UngDungEdit">Ứng Dụng:</label>
                                    <input type="text" class="form-control" id="UngDungEdit" name="UngDungEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="CongNgheHinhAnhEdit">Công Nghệ Hình Ảnh:</label>
                                    <input type="text" class="form-control" id="CongNgheHinhAnhEdit" name="CongNgheHinhAnhEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="DieuKhienBangGiongNoiEdit">Điều Khiển Bằng Giọng Nói:</label>
                                    <input type="text" class="form-control" id="DieuKhienBangGiongNoiEdit" name="DieuKhienBangGiongNoiEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="RemoteThongMinhEdit">Remote Thông Minh:</label>
                                    <input type="text" class="form-control" id="RemoteThongMinhEdit" name="RemoteThongMinhEdit">
                                </div>
                                
                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="PhanChieuEdit">Phản Chiếu:</label>
                                    <input type="text" class="form-control" id="PhanChieuEdit" name="PhanChieuEdit">
                                </div>

                                <!--Loai Quat-->
                                <div class="form-group" >                               
                                    <label for="KichThuocEdit">Kích Thước:</label>
                                    <input type="text" class="form-control" id="KichThuocEdit" name="KichThuocEdit">
                                </div>
                            </div>
                            
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" form="editProductForm" onclick="validateForm2()">Edit</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            
 //  Lay the cha cua tung loai the theo tskt           
            var QuatEdit = document.getElementById("LoaiQuatEdit").parentElement.parentElement;
            var DieuHoaEdit = document.getElementById("LoaiMayEdit").parentElement.parentElement;
            var TuLanhEdit = document.getElementById("KieuTuEdit").parentElement.parentElement;
            var TiviEdit = document.getElementById("LoaiTVEdit").parentElement.parentElement;
            
            var categorySelectEdit = document.getElementById("categoryEdit");           
            
            //  Truyen nhung gia tri ban dau vao tung the cua SanPham    
            function editProductModal(id, name, brand, price, quantity, image, categoryId) {
                $('#MaSPEdit').val(id);
//                console.log(id);
                $('#nameEdit').val(name);
                $('#brandEdit').val(brand);
                $('#priceEdit').val(price);
                $('#quantityEdit').val(quantity);
                $('#categoryEdit').val(categoryId);
        
//Hien thi tskt theo tung category KHI MAC DINH tu admin -> Edit        
//                get value of selected tag
                var selectedCategoryEdit = categorySelectEdit.value;
                // Check if the selected category requires color and material inputs
                if (parseInt(selectedCategoryEdit) === 1) {
                    // Show the color and material inputs
                    QuatEdit.style.display = "block";
                    DieuHoaEdit.style.display = "none";
                    TuLanhEdit.style.display = "none";
                    TiviEdit.style.display = "none";
                }
                
                else if (parseInt(selectedCategoryEdit) === 2) {
                    // Show the color and material inputs
                    QuatEdit.style.display = "none";
                    DieuHoaEdit.style.display = "block";
                    TuLanhEdit.style.display = "none";
                    TiviEdit.style.display = "none";
                }
                
                else if (parseInt(selectedCategoryEdit) === 3) {
                    // Show the color and material inputs
                     QuatEdit.style.display = "none";
                    DieuHoaEdit.style.display = "none";
                    TuLanhEdit.style.display = "block";
                    TiviEdit.style.display = "none";
                }
                
                else if (parseInt(selectedCategoryEdit) === 4) {
                    // Show the color and material inputs
                   QuatEdit.style.display = "none";
                    DieuHoaEdit.style.display = "none";
                    TuLanhEdit.style.display = "none";
                    TiviEdit.style.display = "block";
                }
                else {
                     QuatEdit.style.display = "none";
                    DieuHoaEdit.style.display = "none";
                    TuLanhEdit.style.display = "none";
                    TiviEdit.style.display = "none";
                }
                
                $('#previewImageEdit').attr('src',image);
                $('#previewImageEdit').css('display','block');
            }
          
            
            function validateForm2() {
                let name = $('#nameEdit').val();
                let brand = $('#brandEdit').val();
                let price = $('#priceEdit').val();
                let quantity = $('#quantityEdit').val();
                let category = $('#categoryEdit').val();
//          xoá thông báo loi hien tai: goi den class
                $('.error').html('');
                if (name === '') {
                    $('#nameEditError').html('Name of product must not be empty');
                }
                
                if (brand === '') {
                    $('#brandEditError').html('ThuongHieu of product must not be empty');
                }
                
                if (price === '') {
                    $('#priceError').html('Price of product must not be empty');
                } else if (!$.isNumeric(price) || parseFloat(price) < 0) {
                    $('#priceEditError').html('Price of product must be digits and greater than 0');
                }
                if (quantity === '') {
                    $('#quantityEditError').html('Quantity of product must not be empty');
                } else if (!$.isNumeric(quantity) || parseInt(quantity) <= 0) {
                    $('#quantityEditError').html('Quantity of product must be digits and greater or equal than 0');
                }
                if (category === '') {
                    $('#categoryEditError').html('Category of product must not be empty');
                }
                // Kiểm tra nếu không có lỗi thì submit form
                let error = '';
                $('.error').each(function () {
                    error += $(this).html();
                });
                if (error === '') {
                    $('#editProductForm').submit();
                } else {
                    event.preventDefault();
                }
            }
            
            function displayImage2(input) {
                var previewImage = document.getElementById("previewImageEdit");
                var file = input.files[0];
                var reader = new FileReader();
                reader.onload = function (e) {
                    previewImage.src = e.target.result;
                    previewImage.style.display = "block";
                }
                reader.readAsDataURL(file);
            }
            
            

  
    
//Hien thi tskt theo tung category KHI THAY DOI
            categorySelectEdit.addEventListener("change", function () {
//                get value of selected tag
                var selectedCategoryEdit = categorySelectEdit.value;
                // Check if the selected category requires color and material inputs
                if (parseInt(selectedCategoryEdit) === 1) {
                    // Show the color and material inputs
                    QuatEdit.style.display = "block";
                    DieuHoaEdit.style.display = "none";
                    TuLanhEdit.style.display = "none";
                    TiviEdit.style.display = "none";
                }
                
                else if (parseInt(selectedCategoryEdit) === 2) {
                    // Show the color and material inputs
                    QuatEdit.style.display = "none";
                    DieuHoaEdit.style.display = "block";
                    TuLanhEdit.style.display = "none";
                    TiviEdit.style.display = "none";
                }
                
                else if (parseInt(selectedCategoryEdit) === 3) {
                    // Show the color and material inputs
                     QuatEdit.style.display = "none";
                    DieuHoaEdit.style.display = "none";
                    TuLanhEdit.style.display = "block";
                    TiviEdit.style.display = "none";
                }
                
                else if (parseInt(selectedCategoryEdit) === 4) {
                    // Show the color and material inputs
                   QuatEdit.style.display = "none";
                    DieuHoaEdit.style.display = "none";
                    TuLanhEdit.style.display = "none";
                    TiviEdit.style.display = "block";
                }
                else {
                     QuatEdit.style.display = "none";
                    DieuHoaEdit.style.display = "none";
                    TuLanhEdit.style.display = "none";
                    TiviEdit.style.display = "none";
                }
            });
            
            
        </script>
    </body>
</html>