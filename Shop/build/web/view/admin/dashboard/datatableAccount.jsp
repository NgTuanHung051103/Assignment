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
                Data Table Product
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Adress</th>
                                <th>Tk</th>
                                <th>Mk</th>
                                <th>isAdmin</th>
                                <th>SDT</th>
                                <th>txtCart</th>
                                <th>Tuoi</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items = "${listAcc}" var = "acc">
                                <tr>
                                    <td>${acc.getID()}</td>
                                    <td>${acc.getTen()}</td>
                                    <td>${acc.getEmail()}</td>
                                    <td>${acc.getDiaChi()}</td>
                                    <td>${acc.getTk()}</td>
                                    <td>${acc.getMk()}</td>
                                    <c:if test = "${acc.getIsAdmin() == 1 }">
                                        <td>User</td>
                                    </c:if>
                                    <c:if test = "${acc.getIsAdmin() == 2 }">
                                        <td>Admin</td>
                                    </c:if>
                                    <td>${acc.getSDT()}</td>
                                    <td>${acc.getTxtCart()}</td>
                                    <td>${acc.getTuoi()}</td>

                                    <!--Edit-->
                                    <td style="text-align:center"> 
                                        <i class="fa fa-edit" data-toggle="modal" data-target="#editAccountModal" 
                                           onclick="editAccountModal(
                                           `${acc.getID()}`, `${acc.getTen()}`, `${acc.getEmail()}`
                                            ,`${acc.getDiaChi()}`,`${acc.getTk()}`, `${acc.getMk()}`
                                            , ${acc.getIsAdmin()}, `${acc.getSDT()}`, `${acc.getTxtCart()}`
                                            , ${acc.getTuoi()} )"></i>
                                        &nbsp;&nbsp;
                                    </td>

                                       <jsp:include page="../modal/editAccountModal.jsp"></jsp:include>

                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
