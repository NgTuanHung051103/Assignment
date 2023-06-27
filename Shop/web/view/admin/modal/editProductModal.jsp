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
                        <form id="editProductForm" action="editProduct" method="POST" enctype="multipart/form-data">
                            <!--id-->
                            <div class="form-group" style="display: none">
                                <input type="text" class="form-control" id="idEditInput" name="id" />
                            </div>
                            <!--Name-->
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <input type="text" class="form-control" id="nameEditInput" name="name" />
                                <div id="nameEditError" class="error"></div>
                            </div>
                            <!--Price-->
                            <div class="form-group">
                                <label for="price">Price:</label>
                                <input type="text" class="form-control" id="priceEditInput" name="price"/>
                                <div id="priceEditError" class="error"></div>
                            </div>
                            <!--Quantity-->
                            <div class="form-group">
                                <label for="quantity">Quantity:</label>
                                <input type="text" class="form-control" id="quantityEditInput" name="quantity"/>
                                <div id="quantityEditError" class="error"></div>
                            </div>
                            <!--Category-->
                            <div class="form-group">
                                <label for="category">Category: </label>
                                <div class="input-group">
                                    <select class="custom-select" id="categoryEditInput" name="category">
                                        <c:forEach items="${listCategories}" var="category">
                                            <option value="${category.id}">${category.name}</option>
                                        </c:forEach>
                                    </select>
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button">Category</button>
                                    </div>
                                </div>
                            </div>
                            <!--Image-->
                            <div class="form-group">
                                <label for="image">Image: </label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Upload</span>
                                    </div>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="imageEdit" name="image"
                                            onchange="displayImage2(this)"/>
                                        <label class="custom-file-label">Choose file</label>
                                    </div>
                                </div>
                                <img id="previewImage2" src="#" alt="Preview"
                                    style="display: none; max-width: 300px; max-height: 300px;">

                            </div>
                            <!--Description-->
                            <div class="form-group">
                                <label for="descriptionEditInput">Description:</label>
                                <textarea class="form-control" id="descriptionEditInput" name="description"></textarea>
                            </div>
                        </form>
                    </div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" form="editProductForm"
                            onclick="validateForm2()">Edit</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function validateForm2() {
                let name = $('#nameEditInput').val();
                let price = $('#priceEditInput').val();
                let quantity = $('#quantityEditInput').val();

                //xoá thông báo lỗi hiện tại
                $('.error').html('');

                if (name === '') {
                    $('#nameEditError').html('Name of product must not be empty');
                }

                if (price === '') {
                    $('#priceEditError').html('Price of product must not be empty');
                } else if (!$.isNumeric(price) || parseFloat(price) < 0) {
                    $('#priceEditError').html('Price of product must be digits and greater than 0');
                }

                if (quantity === '') {
                    $('#quantityEditError').html('Quantity of product must not be empty');
                } else if (!$.isNumeric(quantity) || parseInt(price) < 0) {
                    $('#quantityEditError').html('Quantity of product must be digits and greater or equal than 0');
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
                var previewImage = document.getElementById("previewImage2");
                var file = input.files[0];
                var reader = new FileReader();

                reader.onload = function (e) {
                    previewImage.src = e.target.result;
                    previewImage.style.display = "block";
                }

                reader.readAsDataURL(file);
            }

            function editProductModal(id, name, description, price, quantity, image, categoryId) {
                $('#idEditInput').val(id);
                console.log(id);
                $('#nameEditInput').val(name);
                $('#priceEditInput').val(price);
                $('#quantityEditInput').val(quantity);
                $('#categoryEditInput').val(categoryId);
                $('#descriptionEditInput').val(description);
                $('#previewImage2').attr('src',image);
                $('#previewImage2').css('display','block');
            }

        </script>
    </body>
</html>
