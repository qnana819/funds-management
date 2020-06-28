<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
        <%!
	String strOne;	
    String struserName;
    String strpassWord;
   
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
	strOne=request.getParameter("id");
	
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
		
	String sql="select * from user1 where id='"+intOne+"'";
		
	rs=stmt.executeQuery(sql);
		
	if(rs.next()){
		
	   struserName=rs.getString("userName");
	   strpassWord=rs.getString("passWord");
	  
	}else{
		out.println("数据库错误");
	}
		
	rs.close();
	stmt.close();
	conn.close();

%>
                                <form action="removeUsers_ok.jsp" method="post">
                                    <div class="ibox float-e-margins">
                                        <div class="ibox-title">
                                            <h5>删除用户</h5>
                                            <div class="ibox-tools">
                                                <a class="collapse-link"> <i class="fa fa-chevron-up"></i> </a>
                                                <a class="close-link">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="ibox-content clearfix pr0 search_box">
                                            <div class="col-md-6  col-md-offset-3">

                                                <div class="form-group clearfix">
                                                    <label class="col-sm-3 control-label">用户名称：</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" name="edituserName" class="form-control" placeholder="" value="<%=struserName%>">
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-sm-3 control-label">密码：</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" name="editpassWord" class="form-control" placeholder="" value="<%=strpassWord%>">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="blank2"></div>
                                        <div class="text-center">
                                            <input type="hidden" value=<%=strOne%> name="txtHidden">
                                            <button class="btn btn-success" type="submit">&nbsp;&nbsp;<i class="fa fa-remove"></i>&nbsp;&nbsp;确认删除&nbsp;&nbsp;</button>
                                            <input class="btn btn-warning" type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回上一页">

                                        </div>
                                    </div>
                                </form>
                        </div>
                    </div>
                </div>
                <script language=javascript>
                    // function go() {
                    //     window.history.go(-1);
                    // }
                    // setTimeout("go()", 3000);
                </script>
            </body>

            </html>