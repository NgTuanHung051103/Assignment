 
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
                   Kiểu Tủ
                </li>
                <li class="list-group-item px-0">
                  Dung Tích
                </li>
                <li class="list-group-item px-0">
                    Công Nghệ Tiết Kiệm Điện
                </li>
                <li class="list-group-item px-0">
                    Công Nghệ Làm Lạnh
                </li>
                <li class="list-group-item px-0">
                    Công Nghệ Kháng Khuẩn Khử Mùi
                </li>
                <li class="list-group-item px-0">
                    Công Nghệ Bảo Quản Thực Phẩm
                </li>
                <li class="list-group-item px-0">
                   Kích Thước Khối Lượng
                </li>
                <li class="list-group-item px-0">
                   Tiện Ích
                </li>
            </ul> 
        </div>
        <div class="col-md-6">
            <ul class="list-group list-group-flush">
                <li class="list-group-item px-0">
                  ${TSKT.getKieuTu()}
                </li>
                <li class="list-group-item px-0">
                  ${TSKT.getDungTich()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getCongNgheTietKiemDien()}
                </li>
                <li class="list-group-item px-0">
                    ${TSKT.getCongNgheLamLanh()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getCongNgheKhangKhuanKhuMui()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getCongNgheBaoQuanThucPham()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getKichThuocKhoiLuong()}
                </li>
                <li class="list-group-item px-0">
                    ${TSKT.getTienIch()} 
                </li>
            </ul> 
        </div>                         
</body>
</html>
