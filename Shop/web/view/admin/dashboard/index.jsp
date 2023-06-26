<%-- 
    Document   : index
    Created on : 17/06/2023, 8:25:11 PM
    Author     : NgTua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin - Dashboard</title>

        <!-- Custom fonts for this template-->
        <!-- <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"> -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" 
              integrity="sha512-rqQltXRuHxtPWhktpAZxLHUVJ3Eombn3hvk9PHjV/N5DMUYnzKPC1i3ub0mEXgFzsaZNeJcoE0YHq0j/GFsdGg==" 
              crossorigin="anonymous" 
              referrerpolicy="no-referrer" />

        <!-- Page level plugin CSS-->
        <!-- <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet"> -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.19/css/dataTables.bootstrap4.min.css" 
              integrity="sha512-4o2NtfcBGIT0SbOTpWLYovl07cIaliKIQpUXvEPvyOgBF/01xY1TXm5F1B+X48/zhhFLIw2oBTsE0rjcwEOwJQ==" 
              crossorigin="anonymous" 
              referrerpolicy="no-referrer" />

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/admin/sb-admin.css" rel="stylesheet">

        
        <!--Duong dan: http://localhost:8080/Shop/view/admin/dashboard/index.jsp-->
    </head>

    <body id="page-top">
        
         <!--navbar--> 
         <jsp:include page = "../../${initParam['CommonDashboard']}/navbar.jsp"></jsp:include>
                         

        <div id="wrapper">

            <!-- Sidebar -->
            <jsp:include page = "../../${initParam['CommonDashboard']}/sideBar.jsp"></jsp:include>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <jsp:include page = "../../${initParam['CommonDashboard']}/breadcumb.jsp"></jsp:include>

                    <!-- Icon Cards-->
                    <jsp:include page = "../../${initParam['CommonDashboard']}/iconCard.jsp"></jsp:include>

                    <!-- Area Chart Example-->
                    <jsp:include page = "../../${initParam['CommonDashboard']}/areaChart.jsp"></jsp:include>

                    <!-- DataTables Example -->
                    <jsp:include page = "../../admin/dashboard/datatableProduct.jsp"></jsp:include>

                </div>
                <!-- /.container-fluid -->

                <!-- Sticky Footer -->
                <jsp:include page = "../../${initParam['CommonDashboard']}/stickyFooter.jsp"></jsp:include>

            </div>
            <!-- /.content-wrapper -->
            
        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <jsp:include page = "../../${initParam['CommonDashboard']}/scrollTopButton.jsp"></jsp:include>

        <!-- Logout Modal-->
        <jsp:include page = "../../${initParam['CommonDashboard']}/logOutModal.jsp"></jsp:include>
        
        <!-- Bootstrap core JavaScript-->
        <!-- <script src="vendor/jquery/jquery.min.js"></script> -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" 
                integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" 
                crossorigin="anonymous" referrerpolicy="no-referrer">
        </script>

        <!-- <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
        <script src="https://cdn.usebootstrap.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <!-- <script src="vendor/jquery-easing/jquery.easing.min.js"></script> -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js" 
                integrity="sha512-0QbL0ph8Tc8g5bLhfVzSqxe9GERORsKhIn1IrpxDAgUsbBGz/V7iSav2zzW325XGd1OMLdL4UiqRJj702IeqnQ==" 
                crossorigin="anonymous" referrerpolicy="no-referrer">
        </script>

        <!-- Page level plugin JavaScript-->
        <!-- <script src="vendor/chart.js/Chart.min.js"></script> -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" 
                integrity="sha512-mf78KukU/a8rjr7aBRvCa2Vwg/q0tUjJhLtcK53PHEbFwCEqQ5durlzvVTgQgKpv+fyNMT6ZQT1Aq6tpNqf1mg==" 
                crossorigin="anonymous" referrerpolicy="no-referrer">
        </script>

        <!-- <script src="vendor/datatables/jquery.dataTables.js"></script> -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.19/js/jquery.dataTables.min.js" 
                integrity="sha512-c2bQrjZ1iFm8q28SJKvX+A/H6ItQ+jumpms8XGVRkpc2lWxiNl1WcoI4pf0g5/1tDfcShv7oTwzWF3qizR03ZQ==" 
                crossorigin="anonymous" referrerpolicy="no-referrer">
        </script>

        <!-- <script src="vendor/datatables/dataTables.bootstrap4.js"></script> -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.19/js/dataTables.bootstrap4.min.js" 
                integrity="sha512-LNaU4dKqd/wXAdyvZg+hH0YqMIlEVJNe1qFoIdqLr1S/ontCVJGn7fM7YUos9oqHRfmTgok1DTtUHpvxzNRrEg==" 
                crossorigin="anonymous" referrerpolicy="no-referrer">
        </script>

        <!-- Custom scripts for all pages-->
        <script src="${pageContext.request.contextPath}/javascript/admin/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="${pageContext.request.contextPath}/javascript/admin/demo/datatables-demo.js"></script>
        <script src="${pageContext.request.contextPath}/javascript/admin/demo/chart-area-demo.js"></script>

    </body>

</html>
