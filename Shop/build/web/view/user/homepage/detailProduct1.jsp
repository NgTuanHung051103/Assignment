
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>bs4 product detail - Bootdey.com</title>
    </head>

    <body>
        <c:set var = "TSKT" value="${sessionScope.tsktDetail}"/>
        <div class="col-md-6">
            <ul class="list-group list-group-flush">
                <li class="list-group-item px-0">
                   Loại quạt
                </li>
                <li class="list-group-item px-0">
                   Đường kính quạt
                </li>
                <li class="list-group-item px-0">
                    Chế độ gió
                </li>
                <li class="list-group-item px-0">
                    Bảng điều khiển
                </li>
                <li class="list-group-item px-0">
                    Loại motor
                </li>
                <li class="list-group-item px-0">
                    Tiện ích
                </li>
                <li class="list-group-item px-0">
                    Kích thước - Khối lượng
                </li>
                <li class="list-group-item px-0">
                    Số cánh quạt
                </li>
            </ul> 
        </div>
        <div class="col-md-6">
            <ul class="list-group list-group-flush">
                <li class="list-group-item px-0">
                   ${TSKT.getLoaiQuat()}
                </li>
                <li class="list-group-item px-0">
                  ${TSKT.getDuongKinhQuat()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getCheDoGio()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getBangDieuKhien()}
                </li>
                <li class="list-group-item px-0">
                    ${TSKT.getLoaiMotor()}
                </li>
                <li class="list-group-item px-0">
                    ${TSKT.getTienIch()}
                </li>
                <li class="list-group-item px-0">
                    ${TSKT.getKichThuocKhoiLuong()}
                </li>
                <li class="list-group-item px-0">
                    ${TSKT.getSoCanhQuat()} cánh
                </li>
            </ul> 
        </div>                         
</body>


</html>