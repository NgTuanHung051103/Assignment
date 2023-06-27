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
                Data Table Example</div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Ảnh Sản Phẩm</th>
                                <th>Tên</th>
                                <th>Thương Hiệu</th>
                                 <th>Giá Sản Phẩm</th>
                                <th>Số Lượng</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                           <c:forEach items = "${listSP}" var = "sp">
                               <tr>
                                <td><img class="card-img-top" style=" width: 125px;" src="${sp.getImg()}" alt="Card image cap"></td>
                                <td>${sp.getTenSP()}</td>
                                <td>${sp.getThuongHieu()}</td>
                                <td>${sp.getGiaThanh()}</td>
                                <td>${sp.getSoLuong()}</td>
                            </tr>
                           </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
            <jsp:include page="../modal/editProductModal.jsp"></jsp:include>
            <jsp:include page="../modal/deleteProductModal.jsp"></jsp:include>

        </div>
    </body>

</html>
