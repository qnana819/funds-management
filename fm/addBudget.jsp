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
                        <form action="addBudget_ok.jsp" method="post">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>添加预算</h5>
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
                                            <label class="col-sm-3 control-label">项目类别：</label>
                                            <div class="col-sm-9">
                                                <select type="text" name="prosort" class="form-control" placeholder="">
                                               <option value="0">请选择---</option> 
                                               <option value="办公费">办公费</option> 
                                               <option value="印刷费">印刷费</option> 
                                               <option value="邮电费">邮电费</option> 
                                               <option value="差旅费">差旅费</option> 
                                               <option value="维修(护)费">维修(护)费</option> 
                                               <option value="租赁费">租赁费</option> 
                                               <option value="专用材料费">专用材料费</option> 
                                               <option value="劳务费">劳务费</option> 
                                               <option value="其他交通费">其他交通费</option>
                                               <option value="其他商品和服务支出">其他交通费</option>                                   
                                            </select>
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">项目名称：</label>
                                            <div class="col-sm-9">
                                                <select type="text" name="proname" class="form-control" placeholder="">
                                               <option value="0">请选择---</option> 
                                               <option value="日常办公用品类">日常办公用品类</option> 
                                               <option value="印刷费">印刷费</option> 
                                               <option value="电话费">电话费</option> 
                                               <option value="教师教学差旅费">教师教学差旅费</option> 
                                               <option value="学生教学差旅费">学生教学差旅费</option> 
                                               <option value="办公设备维修费">办公设备维修费</option> 
                                               <option value="其他设备租赁费">其他设备租赁费</option> 
                                               <option value="试验用品">试验用品</option> 
                                               <option value="教材和软件购置费">教材和软件购置费</option>
                                               <option value="实习材料费">实习材料费</option>
                                               <option value="外聘教师讲课酬金">外聘教师讲课酬金</option>
                                               <option value="打的费">打的费</option>
                                               <option value="办公交通工具租赁费">办公交通工具租赁费</option>
                                               <option value="教学实习交通工具租赁费">教学实习交通工具租赁费</option>
                                               <option value="广告宣传费">广告宣传费</option>
                                               <option value="会员费">会员费</option>
                                               <option value="其他">其他</option>
                                            </select>
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">金额：</label>
                                            <div class="col-sm-9">
                                                <input type="number" name="funds" class="form-control" placeholder="预算金额，单位/元">
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">编制依据：</label>
                                            <div class="col-sm-9">
                                                <textarea type="text" name="gist" class="form-control" placeholder="请输入编制依据"></textarea>
                                            </div>
                                        </div>

                                        <div class="form-group clearfix">
                                            <label class="col-sm-3 control-label">编制说明：</label>
                                            <div class="col-sm-9">
                                                <textarea type="text" name="explain" class="form-control" placeholder="请输入编制说明，不超过200字"></textarea>
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