
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
                  Loại Tivi
                </li>
                <li class="list-group-item px-0">
                   Ứng Dụng
                </li>
                <li class="list-group-item px-0">
                  Công Nghệ Hình Ảnh
                </li>
                <li class="list-group-item px-0">
                    Điều Khiển Bằng Giọng Nói
                </li>
                <li class="list-group-item px-0">
                    Remote Thông Minh
                </li>
                <li class="list-group-item px-0">
                    Phản Chiếu
                </li>
                <li class="list-group-item px-0">
                    Kích Thước
                </li>
            </ul> 
        </div>
        <div class="col-md-6">
            <ul class="list-group list-group-flush">
                <li class="list-group-item px-0">
                 ${TSKT.getLoaiTV()}
                </li>
                <li class="list-group-item px-0">
                 ${TSKT.getUngDung()}
                </li>
                <li class="list-group-item px-0">
                  ${TSKT.getCongNgheHinhAnh()}
                </li>
                <li class="list-group-item px-0">
                    ${TSKT.getDieuKhienBangGiongNoi()}
                </li>
                <li class="list-group-item px-0">
                   ${TSKT.getRemoteThongMinh()}
                </li>
                <li class="list-group-item px-0">
                  ${TSKT.getPhanChieu()}
                </li>
                <li class="list-group-item px-0">
                  ${TSKT.getKichThuoc()}
                </li>
            </ul> 
        </div>                         
</body>


</html>










<td width="390">Loại Tivi</td>
                                            <td>${TSKT.getLoaiTV()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Ứng Dụng</td>
                                            <td>${TSKT.getUngDung()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Công Nghệ Hình Ảnh</td>
                                            <td>${TSKT.getCongNgheHinhAnh()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Điều Khiển Bằng Giọng Nói</td>
                                            <td>${TSKT.getDieuKhienBangGiongNoi()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Remote Thông Minh</td>
                                            <td>${TSKT.getRemoteThongMinh()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Phản Chiếu</td>
                                            <td>${TSKT.getPhanChieu()}</td>
                                        </tr>
                                        <tr>
                                            <td width="390">Kích Thước</td>
                                            <td>${TSKT.getKichThuoc()}</td>
                                        </tr>