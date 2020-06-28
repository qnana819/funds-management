<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
        <%!
	String strOne;	
    String strproname;
    String streconomicSubjects;
    String strdate;
    String strabstract;
    String strexpend;
    String strdepartment;
    String strapprovalStatus;
%>
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
                            <%
	strOne=request.getParameter("proid");
	
	int intOne = Integer.parseInt(strOne);
	
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
		
	String sql="select * from project where proid='"+intOne+"'";
		
	rs=stmt.executeQuery(sql);
		
	if(rs.next()){
		
	   strproname=rs.getString("proname");
	   streconomicSubjects=rs.getString("economicSubjects");
	   strdate=rs.getString("date");
	   strabstract=rs.getString("abstract");
	   strexpend=rs.getString("expend");
       strdepartment=rs.getString("department");
       strapprovalStatus=rs.getString("approvalStatus");
	}else{
		out.println("数据库错误");
	}
		
	rs.close();
	stmt.close();
	conn.close();

%>
                                <form action="editProject_ok.jsp" method="post">
                                    <div class="ibox float-e-margins">
                                        <div class="ibox-title">
                                            <h5>修改项目</h5>
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
                                                    <label class="col-sm-3 control-label">项目名称：</label>
                                                    <div class="col-sm-9">
                                                        <select type="text" name="editproname" class="form-control" placeholder="" value=<%=strproname%>>
                                               <!-- <option value="0">请选择---</option>  -->
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
                                                    <label class="col-sm-3 control-label">部门经济科目：</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" name="editeconomicSubjects" class="form-control" placeholder="" value="<%=streconomicSubjects%>"></input>
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-sm-3 control-label">单据日期：</label>
                                                    <div class="col-sm-9">
                                                        <input type="date" name="editdate" class="form-control" placeholder="" value="<%=strdate%>">
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-sm-3 control-label">摘要：</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" name="editabstract" class="form-control" placeholder="" value="<%=strabstract%>">
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-sm-3 control-label">支出金额：</label>
                                                    <div class="col-sm-9">
                                                        <input type="number" name="editexpend" class="form-control" placeholder="单位/元" value="<%=strexpend%>">
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-sm-3 control-label">部门：</label>
                                                    <div class="col-sm-9">
                                                        <select type="text" name="editdepartment" class="form-control" placeholder="" value="<%=strapprovalStatus%>">
                                               <!-- <option value="0">请选择---</option>  -->
                                               <option value="办公室">办公室</option> 
                                               <option value="基础">基础</option> 
                                               <option value="学院">学院</option> 
                                               <option value="实验室">实验室</option>
                                               <option value="学生">学生</option> 
                                               <option value="信息">信息</option> 
                                               <option value="旅游">旅游</option> 
                                               <option value="人资">人资</option> 
                                               <option value="市营">市营</option> 
                                               <option value="物流">物流</option> 
                                                                                 
                                            </select>
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-sm-3 control-label">审批状态：</label>
                                                    <div class="col-sm-9">
                                                        <select type="text" name="editapprovalStatus" class="form-control" value="<%=strdepartment%>">
                                                       <!-- <option value="0">请选择---</option>  -->
                                                       <option value="未审批">未审批</option>
                                                       <option value="审批已通过">审批已通过</option> 
                                                       <option value="审批未通过">审批未通过</option>                                                                                               
                                                    </select>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                        <div class="blank2"></div>
                                        <div class="text-center">
                                            <input type="hidden" value=<%=strOne%> name="txtHidden">
                                            <button class="btn btn-success" type="submit">&nbsp;&nbsp;<i class="fa fa-file-o"></i>&nbsp;&nbsp;确认修改&nbsp;&nbsp;</button>
                                            <input class="btn btn-warning" type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回上一页">
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