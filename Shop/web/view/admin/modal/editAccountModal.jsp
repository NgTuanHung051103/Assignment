<%-- 
    Document   : editAccountModal
    Created on : Jun 21, 2023, 8:44:14 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="modal fade" id="editAccountModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editAccountModalLabel">Edit Account</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editAccountForm" action="editAccount" method="POST" enctype="multipart/form-data">

                    <!--id-->
                    <div class="form-group" style="display: none">
                        <input type="text" class="form-control" id="IDEdit" name="idEdit" />
                    </div>

                    <!--Ten dang nhap-->
                    <div class="form-group">
                        <label for="TkEdit">Ten dang nhap: </label> <span class="requiredd">*</span>
                        <input type="text" class="form-control" id="TkEdit" name="tkEdit">
                        <div id="TkEditError" class="error"></div>
                    </div>

                    <!--Mat khau-->
                    <div class="form-group">
                        <label for="MkEdit">Mat khau: </label><span class="requiredd">*</span>
                        <input type="text" class="form-control" id="MkEdit" name="mkEdit">
                        <div id="MkEditError" class="error"></div>
                    </div>

                    <!--Category-->
                    <div class="form-group">
                        <label for="categoryEdit">Quyen su dung </label><span class="requiredd">*</span>
                        <div class="input-group">
                            <select class="custom-select" id="categoryEdit" name="categoryEdit">
                                <option value="">Chọn một tùy chọn</option>
                                <option value="1">User</option>
                                <option value="2">Admin</option>
                            </select>
                            <div class="input-group-append">    
                                <button class="btn btn-outline-secondary" type="button">Chose</button>
                            </div>
                        </div>
                        <div id="categoryEditError" class="error"></div>
                    </div>
                    <!--Khong bat buoc:--> 

                    <div>
                        <!--Name-->
                        <div class="form-group">
                            <label for="nameEdit">Tên:</label>
                            <input type="text" class="form-control" id="nameEdit" name="nameEdit">
                            <div id="nameEditError" class="error"></div>
                        </div>

                        <!--Thuong hieu-->
                        <div class="form-group">
                            <label for="EmailEdit">Email:</label>
                            <input type="text" class="form-control" id="EmailEdit" name="EmailEdit">
                            <div id="EmailEditError" class="error"></div>
                        </div>

                        <!--Price-->
                        <div class="form-group">
                            <label for="DiaChiEdit">Dia Chi: </label>
                            <input type="text" class="form-control" id="DiaChiEdit" name="diachiEdit">
                            <div id="DiaChiEditError" class="error"></div>
                        </div>

                        <!--Quantity-->
                        <div class="form-group">
                            <label for="SDTEdit">SDT: </label>
                            <input type="text" class="form-control" id="SDTEdit" name="sdtEdit">
                            <div id="SDTEditError" class="error"></div>
                        </div>                            

                        <!--Quantity-->
                        <div class="form-group">
                            <label for="txtCartEdit">txtCart:  </label>
                            <input type="text" class="form-control" id="txtCartEdit" name="txtcartEdit">
                            <div id="txtCartEditError" class="error"></div>
                        </div>       

                        <div class="form-group">
                            <label for="TuoiEdit">Tuoi:  </label>
                            <input type="text" class="form-control" id="TuoiEdit" name="tuoiEdit">
                            <div id="TuoiEditError" class="error"></div>
                        </div>          

                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" form="editAccountForm" onclick="validateForm2()">Edit</button>
            </div>
        </div>
    </div>
</div>

<script>


    var categorySelectEdit = document.getElementById("categoryEdit");

    //  Truyen nhung gia tri ban dau vao tung the cua SanPham    
    function editAccountModal(id, ten, email, diachi, tk, mk, isadmin, sdt, txtcart, tuoi) {
        $('#IDEdit').val(id);
        $('#TkEdit').val(tk);
        $('#MkEdit').val(mk);
        $('#categoryEdit').val(isadmin);
        $('#nameEdit').val(ten);
        $('#EmailEdit').val(email);
        $('#DiaChiEdit').val(diachi);
        $('#SDTEdit').val(sdt);
        $('#txtCartEdit').val(txtcart);
        $('#TuoiEdit').val(tuoi);


    }


    function validateForm2() {

    }



</script>
</body>
</html>