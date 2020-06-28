<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title></title>
            <link rel="shortcut icon" href="favicon.ico">
            <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
            <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
            <link href="../css/animate.min.css" rel="stylesheet">
            <link href="../css/layout.css?v=1.0.0" rel="stylesheet">
        </head>


        <body class="gray-bg">
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <form action="addUsers_ok.jsp" method="post">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>添加用户</h5>
                                    <div class="ibox-tools">
                                        <a class="collapse-link"> <i class="fa fa-chevron-up"></i> </a>
                                        <a class="close-link">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="ibox-content clearfix pr0 search_box">
                                    <div class="col-md-6 col-md-offset-3">
                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">用户名称：</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="userName" class="form-control" placeholder="请输入用户名">
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">密码：</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="passWord" class="form-control" placeholder="请设置密码"></input>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="blank2"></div>
                    <div class="text-center">
                        <button class="btn btn-success" type="submit">&nbsp;&nbsp;<i class="fa fa-file-o"></i>&nbsp;&nbsp;添加&nbsp;&nbsp;</button>
                        <button class="btn btn-warning" type="reset">&nbsp;&nbsp;<i class="fa fa-refresh"></i>&nbsp;&nbsp;重置&nbsp;&nbsp;</button>
                    </div>
                </div>
                </form>
            </div>
            </div>
            </div>
            <script>
            </script>
        </body>

        </html>