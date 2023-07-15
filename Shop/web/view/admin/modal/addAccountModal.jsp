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
        <title>addAccount</title>
        <style>
            .error {
                color: red;
            }
            .requiredd{
                color: red;
            }

        </style>
    </head>
    <body>
        <!-- Modal -->
        <div class="modal fade" id="addAccountModal" tabindex="-1" role="dialog" aria-labelledby="addAccountModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addAccountModalLabel">Add Account</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    
                    <div class="modal-body">

                        <form id="addAccountForm" action="addAccount" method="POST" >
                            
                            <!--Ten dang nhap-->
                            <div class="form-group">
                                <label for="TkInput">Tên đăng nhập: </label> <span class="requiredd">*</span>
                                <input type="text" class="form-control" id="TkInput" name="tk">
                                <div id="TkError" class="error"></div>
                            </div>

                           <!--Mat khau-->
                            <div class="form-group">
                                <label for="MkInput">Mat khau: </label><span class="requiredd">*</span>
                                <input type="text" class="form-control" id="MkInput" name="mk">
                                <div id="MkError" class="error"></div>
                            </div>

                            <!--Category-->
                            <div class="form-group">
                                <label for="categoryInput">Quyền hạn</label><span class="requiredd">*</span>
                                <div class="input-group">
                                    <select class="custom-select" id="categoryInput" name="category">
                                         <option value="">Chọn một tùy chọn</option>
                                        <option value="1">User</option>
                                        <option value="2">Admin</option>
                                    </select>
                                    <div class="input-group-append">    
                                        <button class="btn btn-outline-secondary" type="button">Chọn</button>
                                    </div>
                                </div>
                                <div id="categoryError" class="error"></div>
                            </div>
                            
                            <!--Khong bat buoc:--> 
                            <div>
                                    <!--Name-->
                                <div class="form-group">
                                    <label for="nameInput">Tên:</label>
                                    <input type="text" class="form-control" id="nameInput" name="name">
                                    <div id="nameError" class="error"></div>
                                </div>

                                <!--Thuong hieu-->
                                <div class="form-group">
                                    <label for="EmailInput">Email:</label>
                                    <input type="text" class="form-control" id="EmailInput" name="Email">
                                    <div id="EmailError" class="error"></div>
                                </div>

                                <!--Price-->
                                <div class="form-group">
                                    <label for="DiaChiInput">Địa chỉ: </label>
                                    <input type="text" class="form-control" id="DiaChiInput" name="diachi">
                                    <div id="DiaChiError" class="error"></div>
                                </div>

                                <!--Quantity-->
                                <div class="form-group">
                                    <label for="SDTInput">SDT: </label>
                                    <input type="text" class="form-control" id="SDTInput" name="sdt">
                                    <div id="SDTError" class="error"></div>
                                </div>                            

                                <!--Quantity-->
                                <div class="form-group">
                                    <label for="txtCartInput">txtCart:  </label>
                                    <input type="text" class="form-control" id="txtCartInput" name="txtcart">
                                    <div id="txtCartError" class="error"></div>
                                </div>       

                                <div class="form-group">
                                    <label for="TuoiInput">Tuổi:  </label>
                                    <input type="text" class="form-control" id="TuoiInput" name="tuoi">
                                    <div id="TuoiError" class="error"></div>
                                </div>          
                            </div>
                            
                        </form>   
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                        <button type="button" class="btn btn-primary" form="addAccountForm" onclick="ValidateForm()">Thêm</button>
                    </div>
                    
                </div>
                
            </div>
        </div>

        <script>
            function ValidateForm(){
                let Tk = $('#TkInput').val();
                let Mk = $('#MkInput').val();
                let category = $('#categoryInput').val();
                $('.error').html('');
                
                 if (Tk === '') {
                    $('#TkError').html('Ten dang nhap khong duoc de trong');
                }
                  if (Mk === '') {
                    $('#MkError').html('Mat khau khong duoc de trong');
                }
                 if (category === '') {
                    $('#categoryError').html('Phai nhap quyen han');
                }
                
                // Kiểm tra nếu không có lỗi thì submit form
                let error = '';
                $('.error').each(function () {
                    error += $(this).html();
                });
                if (error === '') {
                     $('#addAccountForm').submit();
                } else {
                    event.preventDefault();
                }
            }

        </script>
    </body>
</html>
