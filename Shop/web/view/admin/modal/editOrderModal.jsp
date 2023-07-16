<%-- 
    Document   : editOrderModal
    Created on : Jun 21, 2023, 8:44:14 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="modal fade" id="editOrderModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editOrderModalLabel">Edit Order</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editOrderForm" action="editOrder" method="POST" >

                    <!--id-->
                    <div class="form-group" style="display: none">
                        <input type="text" class="form-control" id="IDEdit" name="idEdit" />
                    </div>

                     <!--status cu-->
                    <div class="form-group" style="display: none">
                        <input type="text" class="form-control" id="StatusEdit" name="StatusEdit" />
                    </div>

                    <!--Dia CHi-->
                    <div class="form-group">
                        <label for="diachiEdit">Địa chỉ: </label><span class="requiredd">*</span>
                        <input type="text" class="form-control" id="diachiEdit" name="diachiEdit">
                        <div id="diachiEditError" class="error"></div>
                    </div>

                     <!--SDT-->
                    <div class="form-group">
                        <label for="sdtEdit">Số điện thoại: </label><span class="requiredd">*</span>
                        <input type="text" class="form-control" id="sdtEdit" name="sdtEdit">
                        <div id="sdtEditError" class="error"></div>
                    </div>
                    
                    <!--Status-->
                    <div class="form-group">
                        <label for="categoryEdit">Quyền hạn: </label><span class="requiredd">*</span>
                        <div class="input-group">
                            <select class="custom-select" id="categoryEdit" name="categoryEdit">
                                <option value="">Chọn một tùy chọn</option>
                                <option value="0">Hủy đơn hàng đã phê duyệt</option>
                                <option value="1">Đang phê duyệt</option>
                                <option value="2">Đang giao hàng</option>
                                <option value="3">Đã giao dến nơi</option>
                                <option value="4">Đã giao dịch</option>
                                <option value="5">Trả lại hàng</option>
                            </select>
                            <div class="input-group-append">    
                                <button class="btn btn-outline-secondary" type="button">Chọn</button>
                            </div>
                        </div>
                        <div id="categoryEditError" class="error"></div>
                    </div>
                    <!--Khong bat buoc:--> 


                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" form="editOrderForm" onclick="validateForm2()">Edit</button>
            </div>
        </div>
    </div>
</div>

<script>


    var categorySelectEdit = document.getElementById("categoryEdit");

    //  Truyen nhung gia tri ban dau vao tung the cua SanPham    
    function editOrderModal(id, diachi,sdt,status) {
        console.log(diachi);
        console.log(sdt);
        console.log(status);
        $('#IDEdit').val(id);
        $('#diachiEdit').val(diachi);
        $('#sdtEdit').val(sdt);
        $('#categoryEdit').val(status);
        $('#StatusEdit').val(status);
    }


    function validateForm2() {
                let diachi = $('#diachiEdit').val();
                let sdt = $('#sdtEdit').val();
                let category = $('#categoryEdit').val();
                $('.error').html('');
                
                if(diachi ===''){
                    $('#diachiEditError').html('Vui lòng nhập địa chỉ');
                }
                 if(sdt ===''){
                    $('#sdtEditError').html('Vui lòng nhập số điện thoại');
                }
                 if (category === '') {
                    $('#categoryError').html('Phải nhập trạng thái');
                }
                
                // Kiểm tra nếu không có lỗi thì submit form
                let error = '';
                $('.error').each(function () {
                    error += $(this).html();
                });
                if (error === '') {
                     $('#editOrderForm').submit();
                } else {
                    event.preventDefault();
                }
    }



</script>
</body>
</html>