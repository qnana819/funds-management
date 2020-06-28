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
                        <form action="addAccount_ok.jsp" method="post">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>添加项目</h5>
                                    <div class="ibox-tools">
                                        <a class="collapse-link"> <i class="fa fa-chevron-up"></i> </a>
                                        <a class="close-link">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="ibox-content clearfix pr0 search_box">
                                    <div class="col-md-10 col-md-offset-1">


                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">账户名：</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="account_name" class="form-control" placeholder="">
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">身份证：</label>
                                            <div class="col-sm-9">
                                                <select type="text" name="ID_card" class="form-control" placeholder="">
                                               <option value="0">请选择---</option> 
                                               <option value="居民身份证">居民身份证</option> 
                                               <option value="港澳台">港澳台</option> 
                                               <option value="护照">护照</option> 
                                              
                                            </select>
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">身份证号：</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="ID_number" class="form-control" placeholder=""></input>
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">项目摘要：</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="abstract" class="form-control" placeholder=""></input>
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">报销金额：</label>
                                            <div class="col-sm-9">
                                                <input type="number" name="expend" class="form-control" placeholder="单位/元">
                                            </div>
                                        </div>


                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">银行：</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="bank_name" class="form-control" placeholder="">
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">银行账户：</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="bank_number" class="form-control" placeholder="">
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">联系方式：</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="call_number" class="form-control" placeholder="">
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