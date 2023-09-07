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
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/img/favicon-32x32.png">
    </head>
    <body>
        <div class="card mb-3">
                    <div class="card-header">
                <i class="fas fa-table"></i>
                Data Table Product
            </div>
        <div class="card-body">
               <div class="table-responsive">
               <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tên</th>
                                <th>Ảnh</th>
                                 <th>Thương hiệu</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items = "${listSP}" var = "sp">
                                <tr>
                                     <!--lay thong tin san pham qua hashmap-->
                                     <c:if test="${sp.getNhomSP() == 1}">
                                        <c:set var = "tskt" value = "${hashmapTSKTQuat[sp.getMaSP()]}"/>
                                     </c:if>
                                      <c:if test="${sp.getNhomSP() == 2}">
                                        <c:set var = "tskt" value = "${hashmapTSKTDieuHoa[sp.getMaSP()]}"/>
                                     </c:if>
                                      <c:if test="${sp.getNhomSP() == 3}">
                                        <c:set var = "tskt" value = "${hashmapTSKTTuLanh[sp.getMaSP()]}"/>
                                     </c:if>
                                      <c:if test="${sp.getNhomSP() == 4}">
                                        <c:set var = "tskt" value = "${hashmapTSKTTivi[sp.getMaSP()]}"/>
                                     </c:if>
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
                                           ${sp.getMaSP()}, `${sp.getTenSP()}`, `${sp.getThuongHieu()}`,${sp.getGiaThanh()} ,${sp.getSoLuong()}, `${sp.getImg()}`,${sp.getNhomSP()}, `${tskt}`)
                                           "></i>
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
    <script>
        </script>

</html>
