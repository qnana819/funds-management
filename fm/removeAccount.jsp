<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
        <%!
        String strOne;	
        String straccount_name;
        String strID_card;
        String strID_number;
        String strabstract;
        String strexpend;
        String strbank_name;
        String strbank_number;
        String strcall_number;
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
                                        
                                    String sql="select * from bank_account where proid='"+intOne+"'";
                                        
                                    rs=stmt.executeQuery(sql);
                                        
                                    if(rs.next()){
                                        
                                        straccount_name=rs.getString("account_name");
                                        strID_card=rs.getString("ID_card");
                                        strID_number=rs.getString("ID_number");
                                        strabstract=rs.getString("abstract");
                                        strexpend=rs.getString("expend");
                                        strbank_name=rs.getString("bank_name");
                                        strbank_number=rs.getString("bank_number"); 
                                        strcall_number=rs.getString("call_number");
                                    }else{
                                        out.println("数据库错误");
                                    }
                                        
                                    rs.close();
                                    stmt.close();
                                    conn.close();

                                %>
                                <form action="removeAccount_ok.jsp" method="post">
                                    <div class="ibox float-e-margins">
                                        <div class="ibox-title">
                                            <h5>删除账户信息</h5>
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
                                                        <input type="text" name="account_name" class="form-control" value="<%=straccount_name%>">
                                                    </div>
                                                </div>

                                                <div class=" form-group clearfix ">
                                                    <label class="col-sm-3 control-label ">身份证：</label>
                                                    <div class="col-sm-9 ">
                                                        <select type="text " name="ID_card" class="form-control " value="<%=strID_card%>">
                                                        <!-- <option value="0 ">请选择---</option> -->
                                                        <option value="居民身份证 ">居民身份证</option>
                                                        <option value="港澳台 ">港澳台</option>
                                                        <option value="护照 ">护照</option>

                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix ">
                                                    <label class="col-sm-3 control-label ">身份证号：</label>
                                                    <div class="col-sm-9 ">
                                                        <input type="text " name="ID_number" class="form-control " value="<%=strID_number%>">
                                                    </div>
                                                </div>

                                                <div class=" form-group clearfix ">
                                                    <label class="col-sm-3 control-label ">项目摘要：</label>
                                                    <div class="col-sm-9 ">
                                                        <input type="text " name="abstract" class="form-control " value="<%=strabstract%>">
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-sm-3 control-label">支出金额：</label>
                                                    <div class="col-sm-9">
                                                        <input type="number" name="expend" class="form-control" placeholder="单位/元" value="<%=strexpend%>">
                                                    </div>
                                                </div>


                                                <div class="form-group clearfix ">
                                                    <label class="col-sm-3 control-label ">银行：</label>
                                                    <div class="col-sm-9 ">
                                                        <input type="text " name="bank_name" class="form-control " value="<%=strbank_name%>">
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix ">
                                                    <label class="col-sm-3 control-label ">银行账户：</label>
                                                    <div class="col-sm-9 ">
                                                        <input type="text" name="bank_number" class="form-control " value="<%=strbank_number%>">
                                                    </div>
                                                </div>

                                                <div class="form-group clearfix ">
                                                    <label class="col-sm-3 control-label ">联系方式：</label>
                                                    <div class="col-sm-9 ">
                                                        <input type="text" name="call_number" class="form-control " value="<%=strcall_number%>">
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