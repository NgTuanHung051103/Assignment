<%-- 
    Document   : datatableAccount
    Created on : Jul 10, 2023, 4:35:46 PM
    Author     : ptkng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <span>Data Table Account</span>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                               
                                <th>OrderID</th>
                                <th>Trạng thái</th>
                                <th>Ngày đặt hàng</th>
                                <th>Người đặt hàng</th>
                                <th>Địa chỉ nhận hàng</th>
                                <th>Số điện thoại người nhận</th>
                                <th>Tên sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Còn lại</th>
                                 <th>Giá bán</th>
                                 <th>Tổng hóa đơn</th>
                                 <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items = "${requestScope.list_AllOrders}" var = "order">
                                <c:set var = "total" value = "${0}"/>
                                <tr>
                                    <td>${order.getOrderID()}</td>
                                    <td>
                                        <c:if test = "${order.getStatus() == 0}">
                                            Hủy đơn hàng đã phê duyệt
                                        </c:if>
                                            <c:if test = "${order.getStatus() == 1}">
                                            Đang phê duyệt
                                        </c:if>
                                             <c:if test = "${order.getStatus() == 2}">
                                            Đang giao hàng
                                        </c:if>
                                             <c:if test = "${order.getStatus() == 3}">
                                            Đã giao dến nơi
                                        </c:if>
                                             <c:if test = "${order.getStatus() == 4}">
                                            Đã giao dịch
                                        </c:if>
                                              <c:if test = "${order.getStatus() == 5}">
                                            Trả lại hàng
                                        </c:if>
                                    </td>
                                    <td>${order.getOrderDate()}</td>
                                    <td>${order.getAccountID()}</td>
                                    <td>${order.getAddress()}</td>
                                    <td>${order.getSDT()}</td>
                                    
                                    <!--Ten san pham-->
                                    <td>
                                        <c:forEach var = "orderdetail" items = "${requestScope.list_all_order_detail}">
                                            <c:if test = "${order.getOrderID() == orderdetail.getOrderID()}">
                                                 <c:set var = "sanpham" value = "${hashmapSanPham[orderdetail.getMaSP()]}"/>
                                                 ${sanpham.getTenSP()}<br>
                                            </c:if>
                                        </c:forEach>
                                    </td>
                                    
                                    <!--So luong-->
                                    <td>
                                        <c:forEach var = "orderdetail" items = "${requestScope.list_all_order_detail}">
                                            <c:if test = "${order.getOrderID() == orderdetail.getOrderID()}">
                                                ${orderdetail.getSoLuong()}<br>
                                            </c:if>
                                        </c:forEach>
                                    </td>
                                    
                                   <!--Con lai-->
                                    <td>
                                        <c:forEach var = "orderdetail" items = "${requestScope.list_all_order_detail}">
                                            <c:if test = "${order.getOrderID() == orderdetail.getOrderID()}">
                                                <c:set var = "sanpham" value = "${hashmapSanPham[orderdetail.getMaSP()]}"/>
                                                 ${sanpham.getSoLuong()}<br>
                                            </c:if>
                                        </c:forEach>
                                    </td>
                                    
                                    <!--Gia ban-->
                                    <td>
                                        <c:forEach var = "orderdetail" items = "${requestScope.list_all_order_detail}">
                                            <c:if test = "${order.getOrderID() == orderdetail.getOrderID()}">
                                                <c:set var = "sanpham" value = "${hashmapSanPham[orderdetail.getMaSP()]}"/>
                                                 ${sanpham.getGiaThanh()}<br>
                                                 <c:set var ="total" value ="${total + orderdetail.getSoLuong() *sanpham.getGiaThanh()  }"/>   
                                            </c:if>
                                        </c:forEach>
                                    </td>
                                    
                                    <td>${total}</td>

                                    <!--Edit-->
                                    <td style="text-align:center">
                                        <i class="fa fa-edit" data-toggle="modal" data-target="#editOrderModal" 
                                           onclick="editOrderModal(  ${order.getOrderID()},
                                           `${order.getAddress()}`, `${order.getSDT()}`, ${order.getStatus()} )"></i>
                                        &nbsp;&nbsp;
                                        

                                    </td>
                                    
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <jsp:include page="../modal/editOrderModal.jsp"></jsp:include>
        </div>
    </body>
</html>
