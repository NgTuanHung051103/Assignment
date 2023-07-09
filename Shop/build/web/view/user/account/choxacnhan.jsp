 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Cho Xac Nhan-->
                <div class="tab-pane" id="ChoXacNhan">
                    <h2></h2>

                    <hr>
                    <div class="form-group" >
                        <div class="col-xs-12" style = "display: block; background-color: greenyellow; height: 30px;;"  >
                            <div class ="col-md-6"  style = "display: block; background-color: orange; height: 100%;">
                                <span>Chua biet dien gi</span>
                            </div>
                            <div class ="col-md-6"  style = "display: block; background-color: pink;  height: 100%;">
                                <div class ="col-md-6"  style = "display: block; background-color: blueviolet;">
                                    <span>Dang chuan bi hang</span>
                                </div>
                                <div class ="col-md-6"  style = "display: block; background-color: wheat;">
                                    <span>Van Chuyen</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!--San Pham-->
                    <c:forEach var = "i" begin = "1" end = "5">
                        <div class="form-group" >
                            <div class="col-xs-12" style = "display: block; background-color: red; height: 100px; margin: 5px 0px; "  >
                                <!--MaSP-->
                                <input type ="text" hidden name = "MaSP" value = "MaSP"></input>
                                <div class="col-md-3">
                                    <img class="img-fluid mx-auto d-block image" src="${pageContext.request.contextPath}/images/Logo.png">
                                </div>
                                <div class="col-md-4 product-name">
                                    <div class="product-name">
                                        <!--TenSP-->
                                        <a href="#">TenSP</a>
                                        <!--TSKT-->
                                    </div>
                                </div>
                                <div class="col-md-3 quantity">
                                    <label for="quantity">Quantity:</label>
                                    <!--So Luong-->
                                    <input name = "quantity" id="quantity" type="number" value ="4" class="form-control quantity-input">
                                </div>
                                <div class="col-md-2 price">
                                    <!--Gia Thanh-->
                                    <span >Gia thanh</span>
                                    <span>12000</span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                    <div class="form-group">
                        <div class="col-xs-12" style = "display: block; background-color: yellow; height: 50px; "  >
                            <div class="float-right">
                                <form action ="checkOut" method ="GET" id ="checkOut" >
                                    <button type="button" class="btn btn-success btn-lg btn-block" name = "checkOut"
                                            style = "padding: 6px 8px;">Huy Don Hang</button>
                                </form>
                            </div>
                        </div>
                    </div>

                </div><!--/tab-pane-->