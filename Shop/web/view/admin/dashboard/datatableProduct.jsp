<%-- 
    Document   : datatableProduct
    Created on : Jun 14, 2023, 10:41:07 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <div class="card mb-3">
                    <div class="card-header">
                <i class="fas fa-table"></i>
                Data Table Example
            </div>
        <div class="card-body">
               <div class="table-responsive">
               <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Image</th>
                                 <th>Brand</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items = "${listSP}" var = "sp">
                                <tr>
                                     <td>${sp.getMaSP()}</td>
                                     <td>${sp.getTenSP()}</td>
                                    <td><img class="card-img-top" style=" width: 125px;" src="${sp.getImg()}" alt="Card image cap"></td>
                                    <td>${sp.getThuongHieu()}</td>
                                    <td>${sp.getGiaThanh()}</td>
                                    <td>${sp.getSoLuong()}</td>
                                     <!--Edit-->
                                    <td style="text-align:center"> 
                                        <i class="fa fa-edit" data-toggle="modal" data-target="#editProductModal" 
                                           onclick="editProductModal(
                                           ${sp.getMaSP()}, `${sp.getTenSP()}`, `${sp.getThuongHieu()}`,${sp.getGiaThanh()} ,${sp.getSoLuong()}, `${sp.getImg()}`,${sp.getNhomSP()})"></i>
                                        &nbsp;&nbsp;
                                        <!--Delete-->
                                        <i class="fa fa-trash" data-toggle="modal" data-target="#delete-modal" onclick="deleteProductModal(${sp.getMaSP()}, ${sp.getNhomSP()})"></i>  

                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
        </div>
        </div>
               <jsp:include page="../modal/editProductModal.jsp"></jsp:include>
                <jsp:include page="../modal/deleteProductModal.jsp"></jsp:include>
        </div>
         
         
                 
    </body>

</html>
