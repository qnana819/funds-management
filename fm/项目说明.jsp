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
            <link href="../css/plugins/iCheck/custom.css" rel="stylesheet">
            <link href="../css/animate.min.css" rel="stylesheet">
            <link href="../css/layout.css?v=1.0.0" rel="stylesheet">
            <link href="../css/plugins/dataTables/jquery.dataTables.css" rel="stylesheet">
            <link href="../css/plugins/dataTables/dataTables.colVis.css" rel="stylesheet">
            <link href="../css/plugins/dataTables/fixedColumns.dataTables.min.css" rel="stylesheet">
            <link href="../css/plugins/dataTables/rowReorder.dataTables.min.css" rel="stylesheet">
            <link href="../css/plugins/datapicker/jquery.datetimepicker.css" rel="stylesheet">
        </head>

        <body class="gray-bg">
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="location  clearfix">
                    <p class="pull-left"><i class="fa fa-map-marker"></i> 预算管理 > 项目说明</p>
                    <p class="pull-right text-right"><i class="fa fa-home"></i> 预算管理 >项目说明 </p>
                </div>
                <!--location end-->

                <div class="row">
                    <div class="col-sm-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>工商管理学院经费管理项目对应的相关说明</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link"> <i class="fa fa-chevron-up"></i> </a>
                                    <!--                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>-->
                                </div>
                            </div>
                            <div class="ibox-content clearfix pr0 search_box">

                                <div class="infomation">
                                    <p>
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;"> 1、办公费：
                                                <p>（日常办公用品费）300元*61人，仅限本部门行政教学办公用费用（不含用于学生实验、实习的打印纸等材料费用），学校按人均300元定额安排，各部门可根据部门情况适当调整，调增幅度不得高于学校定额的5%（调增时需特殊说明），调减不限。</p>
                                            </font>
                                        </font>
                                    </p>
                                    <p>
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;"> 2、印刷费：
                                                <p>学生活动就业工作印刷装订等。</p>
                                            </font>
                                        </font>
                                    </p>
                                    <p>
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;"> 3、邮电费：
                                                <p>（电话费）55元*61人，学校按人均定额55元安排，各部门可根据部门情况适当调整，调增幅度不得高于学校定额的5%（调增时需特殊说明），调减不限。</p>
                                            </font>
                                        </font>
                                    </p>
                                    <p>
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">
                                                4、差旅费：
                                                <p>（教师教学差旅费）30人*500元+31人*229元，教师进修、培训、因公出差等方面的差旅费，学校按定额安排，各部门可根据部门情况适当调整，调增幅度不得高于学校定额的5%（调增时需特殊说明），调减不限。</p>
                                                <p>（学生教学差旅费）用于学生及指导教师实习差旅、学生大家访和出访用人单位差旅，主要包括：毕业实习，课程实习，生产（顶岗）实习，第二校园实践。含学生大家访和出访用人单位6000元。学生实验实习方面的差旅费及指导学生实验实习的教师差旅费</p>
                                            </font>
                                        </font>
                                    </p>
                                    <p>
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">
                                                5、维修（护）费：（办公设备维修费）行政办公设备维修用费用（含打印机更换硒鼓等)</font>
                                        </font>
                                    </p>
                                    <p>
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;"> 6、租赁费：（其他设备租赁费）学生活动需租赁灯光音响等设备，。 </font>
                                        </font>
                                    </p>
                                    <p>
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;"> 7、专用材料费：
                                                <p>（实验用品）实验室消耗类用品</p>
                                                <p>（教材和软件购置费）教学用教材图书、不构成固定资产的小型软件</p>
                                                <p>（实习材料费）用于毕业论文打印装订、实习用会计账册、实习报告打印、装订及其它实习资料购买、学生活动用品等。其中实习主要包括：毕业实习，课程实习，生产（顶岗）实习、第二校园企业实践等。</p>
                                            </font>
                                        </font>
                                    </p>
                                    <p>
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;"> 8、劳务费：（外聘教师讲课酬金）外聘教师讲课、讲座、报告用讲课酬金（含付给实习单位指导学生实习的费用）。</font>
                                        </font>
                                    </p>
                                    <p>
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">
                                                9、其他交通费：
                                                <p>（打的费）市内办公打车（教学、实验实习打车在差旅费核算）。</p>
                                                <p>（办公交通工具租赁费）因办公需要需租赁有正式营运手续的车辆租赁费。</p>
                                                <p>（教学实习交通工具租赁费）因教学、实验实习需要需租赁有正式营运手续的车辆租赁费。</p>
                                            </font>
                                        </font>
                                    </p>
                                    <p>
                                        <font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">
                                                10、其他商品和服务支出：
                                                <p>（广告宣传费）学生活动就业工作用展牌条幅等广告宣传。</p>
                                                <p>（会员费）旅游教育分会会费，缴纳的各种学会、协会会员费。</p>
                                                <p>（其他）包括学院学生活动等小项支出，包括论文版面费学生活动等其他小项支出。</p>
                                            </font>
                                        </font>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--ibox3 end-->
                </div>
                <!--col-sm-12 招聘者信息列表end-->
            </div>
            <!--row end-->
            <style type="text/css">
                th,
                td {
                    white-space: nowrap;
                }
                
                .DTFC_RightWrapper {
                    right: 0px !important
                }
                
                .dataTable {
                    width: 100% !important
                }
            </style>

            <script src="../js/jquery.min.js?v=2.1.4"></script>
            <script src="../js/bootstrap.min.js?v=3.3.5"></script>
            <script src="../js/plugins/peity/jquery.peity.min.js"></script>
            <script src="../js/content.min.js?v=1.0.0"></script>
            <script src="../js/plugins/iCheck/icheck.min.js"></script>
            <script src="../js/demo/peity-demo.min.js"></script>
            <script src="../js/plugins/dataTables/jquery.dataTables.js"></script>
            <script src="../js/plugins/dataTables/dataTables.fixedColumns.min.js"></script>
            <script src="../js/plugins/dataTables/dataTables.rowReorder.min.js"></script>
            <script src="../js/plugins/dataTables/dataTables.colVis.js"></script>
            <script src="../js/plugins/datapicker/jquery.datetimepicker.full.js"></script>
        </body>

        </html>