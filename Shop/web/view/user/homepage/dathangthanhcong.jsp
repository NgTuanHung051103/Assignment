<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>QC SELECT | QC'S PICK!</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    </head>
    <body>

        <div >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body ">
                        <div class="px-4 py-5">
                            <h3 class="mt-5 theme-color mb-5" style="text-align: center">Thanks for your order ! </h3>
                            <div style="display:flex">
                            <div class="text-center mt-5" style="margin-right:20px">
                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/account">Track your order</a>
                            </div>   
                            <div class="text-center mt-5">
                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/shop">Continue Shopping</a>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <style>
        body {
            background-color: #e493935e;
            height: 100vh;
            width: 100vw;
            display: flex;
            justify-content: center;
            align-items: center
        }

        .modal-body {
            background-color: #fff;
            border-color: #fff;

        }
        .theme-color{

            color: #E49393;
        }
        hr.new1 {
            border-top: 2px dashed #fff;
            margin: 50px 0;
        }
        .btn-primary {
            color: #fff;
            background-color: #E49393;
            border-color: #E49393;
            padding: 12px;
            padding-right: 30px;
            padding-left: 30px;
            border-radius: 1px;
            font-size: 17px;
        }
        .btn-primary:hover {
            color: #fff;
            background-color: #E49393;
            border-color: #E49393;
            padding: 12px;
            padding-right: 30px;
            padding-left: 30px;
            border-radius: 1px;
            font-size: 17px;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</html>