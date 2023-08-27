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
                   Loại Máy
                </li>
                <li class="list-group-item px-0">
                   Công Suất
                </li>
                <li class="list-group-item px-0">
                   Phạm Vi
                </li>
                <li class="list-group-item px-0">
                    Khử Khuẩn
                </li>
                <li class="list-group-item px-0">
                   Công Nghệ Tích Kiệm Điện
                </li>
                <li class="list-group-item px-0">
                    Làm Lạnh Nhanh
                </li>
                <li class="list-group-item px-0">
                    Tiện Ích
                </li>
                <li class="list-group-item px-0">
                   Tiêu Thụ Điện
                </li>
                  <li class="list-group-item px-0">
                   Dàn Lạnh
                </li>
                  <li class="list-group-item px-0">
                   Dàn Nóng
                </li>
            </ul> 
        </div>
        <div class="col-md-6">
            <ul class="list-group list-group-flush">
                <li class="list-group-item px-0">
                   ${TSKT.getLoaiMay()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getCongSuat()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getPhamVi()}
                </li>
                <li class="list-group-item px-0">
                    ${TSKT.getKhuKhuan()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getCongNgheTietKiemDien()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getLamLanhNhanh()}
                </li>
                <li class="list-group-item px-0">
                    ${TSKT.getTienIch()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getTieuThuDien()}
                </li>
                  <li class="list-group-item px-0">
                   ${TSKT.getDanLanh()}
                </li>
                  <li class="list-group-item px-0">
                  ${TSKT.getDanNong()}
                </li>
            </ul> 
        </div>                     
</body>


</html>
