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
                    <p class="pull-left"><i class="fa fa-map-marker"></i> 项目管理 > 项目明细</p>
                    <p class="pull-right text-right"><i class="fa fa-home"></i> 项目管理 >项目明细 </p>
                </div>
                <!--location end-->

                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group clearfix ">
                            <div class="col-sm-12 pr0 pl0">
                                <div class="tabs-container">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">2020年</a> </li>
                                        <li class=""><a data-toggle="tab" href="#tab-2" aria-expanded="false">2019年</a></li>
                                        <li class=""><a data-toggle="tab" href="#tab-2" aria-expanded="false">2018年</a></li>


                                    </ul>
                                    <div class="tab-content">
                                        <div id="tab-1" class="tab-pane active">
                                            <div class="panel-body pr0 pl0 ">

                                                <div class="ibox float-e-margins">
                                                    <div class="ibox-title">
                                                        <h5>项目信息列表</h5>
                                                        <div class="ibox-tools">
                                                            <a href="addAccount.jsp" class="btn btn-success dropdown-toggle" href="javascript:void(0);" target="iframe0"> <i class="fa fa-file-o"></i> 添加 </a>

                                                            <!-- <a id="drop1" class="btn btn-success dropdown-toggle" data-toggle="dropdown" href="#"> <i class="fa fa-arrow-circle-o-down"></i> 导出 </a>
                                            <ul class="dropdown-menu" aria-labelledby="drop1">
                                                <li><a>导出选择列</a> </li>
                                                <li><a>导出全部</a> </li>
                                                <li><a>导出搜索结果</a> </li>
                                            </ul> -->

                                                        </div>
                                                    </div>
                                                    <%
	java.util.Date currentDay=new java.util.Date();
	java.text.SimpleDateFormat formateOne=new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	
	Connection conn;/*创建连接对象*/
	Statement stmt;/*连接语句*/
	ResultSet rs;/*返回记录集*/
		
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

	String dbmsName="sa";/*登录SQL的用户名*/
	String dbmsPass="123456";/*登录SQL密码*/
	String dbName="funds-management";/*访问的数据库名*/
		
	String connURL="jdbc:sqlserver://localhost:1433;DatabaseName="+dbName+";user="+dbmsName+";password="+dbmsPass;
	conn=DriverManager.getConnection(connURL);
	stmt=conn.createStatement();
		
	String sql="select * from bank_account order by proid desc";
		
    rs=stmt.executeQuery(sql);	
    %>
                                                        <div class="ibox-content clearfix">
                                                            <table class="table table-hover row-border cell-border order-column dataTables-example dataTable table-condensed">
                                                                <thead>
                                                                    <tr>
                                                                        <th style="width: 20px; "><input type="checkbox"></th>
                                                                        <th style="width: 329px;">账户编号</th>
                                                                        <th style="width: 329px;">账户名</th>
                                                                        <th style="width: 329px;">身份证</th>
                                                                        <th style="width: 329px;">身份证号</th>
                                                                        <th style="width: 329px;">项目摘要</th>
                                                                        <th style="width: 329px;">支出金额(单位/元)</th>
                                                                        <th style="width: 329px;">银行</th>
                                                                        <th style="width: 329px;">银行账户</th>
                                                                        <th style="width: 329px;">联系方式</th>
                                                                        <th style="width: 329px;">上传时间</th>
                                                                        <th style="width: 329px;">编辑</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <% while(rs.next()){ %>
                                                                        <tr>
                                                                            <td><input type="checkbox"></td>
                                                                            <td class="addId">
                                                                                <%=rs.getInt("proid")%>
                                                                            </td>
                                                                            <td>
                                                                                <%=rs.getString("account_name")%>
                                                                            </td>
                                                                            <td>
                                                                                <%=rs.getString("ID_card")%>
                                                                            </td>
                                                                            <td>
                                                                                <%=rs.getString("ID_number")%>
                                                                            </td>
                                                                            <td>
                                                                                <%=rs.getString("abstract")%>
                                                                            </td>
                                                                            <td>
                                                                                <%=rs.getString("expend")%>
                                                                            </td>
                                                                            <td>
                                                                                <%=rs.getString("bank_name")%>
                                                                            </td>
                                                                            <td>
                                                                                <%=rs.getString("bank_number")%>
                                                                            </td>
                                                                            <td>
                                                                                <%=rs.getString("call_number")%>
                                                                            </td>
                                                                            <td>
                                                                                <%=rs.getString("time")%>
                                                                            </td>
                                                                            <td>
                                                                                <button class="btn btn-white btn-manage" title="修改">
                                                                <%int intId=rs.getInt("proid");
                                                                    out.print("<a href=editAccount.jsp?proid="+intId+">");
                                                                %>
                                                                <i class="fa fa-edit">修改</i> </a>
                                                                
                                                                </button>
                                                                                <button class="btn btn-warning btn-manage" title="删除">
                                                                    <%int removeId=rs.getInt("proid");
                                                                    out.print("<a href=removeAccount.jsp?proid="+removeId+">");
                                                                %>
                                                                <i class="fa fa-remove">删除</i> </a>
                                                                </button>
                                                                            </td>
                                                                        </tr>
                                                                        <%
                                                }
                                                stmt.close();
                                                conn.close();                                                
                                            %>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="tab-2" class="tab-pane ">
                                            <div class="panel-body pr0 pl0 ">



                                            </div>
                                        </div>


                                        <div id="tab-3" class="tab-pane ">
                                            <div class="panel-body pr0 pl0 ">



                                            </div>
                                        </div>



                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>





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
            <script>
                $(document).ready(function() {
                    $(".dataTables-example").dataTable({
                        //rowReorder: true,//拖拽排序
                        //scrollY:        300,//竖向滚动条
                        scrollX: true, //横向滚动条
                        //				scrollCollapse: true,// 
                        //				paging:         false,
                        dom: 'C<"clear">lfrtip', //隐藏列
                        "colVis": {
                            //activate: "mouseover",
                            "buttonText": "&nbsp;<i class='fa fa-cog'>显示字段</i>&nbsp;"
                        }, //按钮文字
                        fixedColumns: {
                            leftColumns: 0,
                            rightColumns: 1
                        },
                        "columnDefs": [{
                            orderable: false,
                            targets: 0
                        }, {
                            orderable: false,
                            targets: 4
                        }], //第一列与第二列禁止排序
                        "order": [
                            [0, null]
                        ], //第一列排序图标改为默认


                    });
                });
                $("#PartnerAdd").click(function() {
                    var html = '<div class="form-group clearfix">\
                            <div class="col-sm-3">\
							<select class="form-control" >\
								<option value="">请选择字段</option>\
								<option value="1">ID</option>\
								<option value="2">名称</option>\
								<option value="3">简称</option>\
                            </select>\
                            </div>\
							<div class="col-sm-2 pr0 pl0">\
                                <select class="form-control" >\
								<option value="">请选择条件</option>\
								<option value="1">包含</option>\
								<option value="2">不包含</option>\
								<option value="3">大于</option>\
                            </select>\
                            </div>\
                            <div class="col-sm-6">\
                                <input type="text" name="" class="form-control">\
                            </div>\
                            <div class="col-sm-1 pl0">\
                                <span class="btn btn-white btn-o-del developer_Partner_delete"   data-t="del"><i class="fa fa-minus"></i></span>\
                            </div>\
                        </div>';
                    $("#search_tt").append(html);
                });
                $("#search_tt").on('click', ".developer_Partner_delete", function() {
                    // $(".developer_Partner_delete").click(function(){  
                    // alert(123123);
                    $(this).closest(".form-group").remove();
                });
            </script>
            <script type="text/javascript">
                $.datetimepicker.setLocale('ch');
                $('#datetimepicker').datetimepicker({
                    timepicker: false
                });

                $('#datetimepicker2').datetimepicker({
                    lang: "ch", //语言选择中文
                    format: "Y-m-d", //格式化日期
                    timepicker: false, //关闭时间选项
                    todayButton: false //关闭选择今天按钮
                });
            </script>
        </body>

        </html>