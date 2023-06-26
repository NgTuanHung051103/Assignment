<%-- 
    Document   : datatableProduct
    Created on : 26/06/2023, 7:51:23 PM
    Author     : NgTua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>+
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
                Data Table Example</div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                            </tr>
                        </thead>
                      
                       <tbody>
                           <c:forEach items = "${listSP}" var = "sp">
                               <tr>
                                <td><img class="card-img-top" style=" width: 125px;" src="${sp.getImg()}" alt="Card image cap"></td>
                                <td>${sp.getTenSP()}</td>
                                <td>${sp.getThuongHieu()}</td>
                                <td>${sp.getGiaThanh()}</td>
                            </tr>
                           </c:forEach>
                            
                       </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>
    </body>
</html>
