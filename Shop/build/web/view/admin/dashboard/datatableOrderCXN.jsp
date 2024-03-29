<%-- 
    Document   : datatableOrderCXN
    Created on : Jul 11, 2023, 6:22:41 PM
    Author     : ptkng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/img/favicon-32x32.png">
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
    <body>
        <div class="container" id="ChoXacNhan">
            <h2></h2>

            <!--1 ORDER-->
            <c:forEach var = "order" items = "${requestScope.list_orderCXN}">
                <c:set var = "total" value = "${0}"/>
                <hr>
                <div class="row" style = "display: block; background-color: #FFFFFF; height: 30px; margin-bottom: 4px; width : 100%; min-height: 50px;
                     display: flex; flex-direction: row; margin-left: 20px;"  >
                    <div   class = "col-4" style = "display: block; background-color: #FFFFFF; height: 100%;">
                        <span>SDT: ${order.getSDT()}</span>
                    </div>
                    <div  class = "col-8" style = "display: block; background-color: #FFFFFF;  height: 100%;
                          display: flex; ">
                        <div class ="col-md-6"  style = "display: block; background-color: #FFFFFF;">
                            <span>Địa chỉ: ${order.getAddress()}</span>
                        </div>
                        <div  class = "col-md-6" style = "display: block; background-color: #FFFFFF;">
                            <span>
                                <c:if test = "${order.getHttt() == 1 }">
                                    Thanh toán trực tiếp
                                </c:if>
                                <c:if test = "${order.getHttt() == 2 }">
                                    Chuyển khoản
                                </c:if>
                            </span>
                        </div>
                    </div>
                </div>

                <!--Duyet tung san pham co trong order-->
                <!--Su dung if : OrD.OrderID = Order thi print-->
                <c:forEach var = "orderdetail" items = "${requestScope.list_order_detailCXN}">
                    <c:if test = "${orderdetail.getOrderID() == order.getOrderID()}">
                        <!--lay thong tin san pham qua hashmap-->
                        <c:set var = "sanpham" value = "${hashmapSanPham[orderdetail.getMaSP()]}"/>
                        <div class="container">
                            <div class="row" style = "display: block; background-color: #FFFFFF; height: 100px;
                                 display: flex;"  >
                                <!--MaSP-->
                                <input type ="text" hidden name = "MaSP" value = "MaSP"></input>
                                <div class="col col-sm-3">
                                    <img class="img-fluid mx-auto d-block image" style=" max-height: 90px;" src="${sanpham.getImg()}">
                                </div>
                                <div class="col col-sm-4 ">
                                    <div class="product-name" style = "padding-top: 6px;">
                                        <!--TenSP-->
                                        <h5>${sanpham.getTenSP()}</h5>
                                        <!--TSKT-->
                                    </div>
                                </div>
                                <div class=" col col-sm-3 quantity" style = "padding-top: 6px;">
                                    <span  style = "color: #EE4D2D; font-size: 20px;">Số lượng: </span>
                                    <br>
                                    <span style = "margin-left: 40px;"> ${orderdetail.getSoLuong()}</span>
                                    <br>
                                    <span style = "margin-left: 12px;">Còn lại: </span>
                                    <span > ${sanpham.getSoLuong()}</span>
                                </div>
                                <div class="col col-sm-2 price" style = "padding-top: 6px;">
                                    <!--Gia Thanh-->
                                    <span style = "color: #EE4D2D; font-size: 20px;">Thành tiền:</span>
                                    <span > ${sanpham.getGiaThanh()} VNÐ</span>
                                </div>
                            </div>
                        </div>
                        <c:set var ="total" value ="${total + orderdetail.getGiaThanh() }"/>   
                    </c:if>
                </c:forEach>

                <div class="form-group">
                    <div class="col-xs-12" style = "display: block; background-color: #FFFEFB; height: 50px; margin-top:4px;margin-bottom: 10px"  >
                        <div class="float-left">
                            <h3 style="color: #EE4D2D; margin: 12px 0px 10px 0px">Tổng hóa đơn: ${total} VND</h3>
                        </div>
                        <div class="float-right" style = "display: flex;justify-content: space-between; width: 400px; ">

                            <!--                            <form action ="#" method ="GET" id ="checkOut" style = "margin-top: 6px;">
                                                            <button type="button" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                                                    style = "padding: 6px 8px;">Ghi chu</button>
                                                              <input type ="text" hidden name ="OrderID" value ="${order.getOrderID()}"/>
                                                        </form>-->
                            <form action ="PheDuyetCXN" method ="POST"  style = "margin-top: 6px; ">
                                <button type="submit" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                        style = "padding: 6px 8px;">Phê duyệt</button>
                                <input type ="text" hidden name ="OrderID" value ="${order.getOrderID()}"/>
                            </form>
                            <form action ="HuyCXN" method ="POST" id ="formhuydonhang${order.getOrderID()}"
                                  style = "margin-top: 6px;">
                                <button type="submit" class="btn btn-success btn-lg btn-block"  name = "checkOut" onclick="huydonhang('${order.getOrderID()}')"
                                        style = "padding: 6px 8px;">Hủy đơn hàng</button>
                                <input type ="text" hidden name ="OrderID" value ="${order.getOrderID()}"/>
                                <input type ="text" hidden name ="AccountID" value ="${order.getAccountID()}"/>
                                <div id ="div_thongbao${order.getOrderID()}" style = "display: none; height: 60px; width: 80px;
                                                                                                                            margin-top: 10px; margin-right: 10px">
                                    <input type = "text" id = "thongbao" name ="thongbao"
                                           style = "width: 150px"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div><!--/tab-pane-->
    </body>

    <script>
        function huydonhang(orderID) {
            var div_thongbao = document.getElementById("div_thongbao"+orderID);
            var form_huydonhang = document.getElementById("formhuydonhang$"+orderID);
//            da hien thi
            if (div_thongbao.style.display === 'block') {
                form_huydonhang.submit();
            } else {
                div_thongbao.style.display = 'block';
                event.preventDefault();
            }
        }
    </script>
</html>
