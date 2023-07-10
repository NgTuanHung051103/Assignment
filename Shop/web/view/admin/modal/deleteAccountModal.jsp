<%-- 
    Document   : deleteProductModal
    Created on : Jun 25, 2023, 2:28:35 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="delete-modal-label" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="delete-modal-label">Confirm to delete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Do you want to delete this product?</p>
            </div>
            <div class="modal-footer">
                <form action="deleteAccount" method="get">
                    <div class="form-group" style="display: none">
                        <input type="text" class="form-control" id="idDelete" name="IDDelete">
                    </div>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                    <button type="submit" class="btn btn-danger">Yes</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    function deleteAccountModal(id) {
        $('#idDelete').val(id);
        console.log( $('#idDelete').val);
    }
</script>