<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
        <!DOCTYPE html>
        <%
Cookie cookies[]=request.getCookies();
Cookie objCookie=null;
String strCookieName=null;
String strCookieValue=null;
String loginState="false";
for(int i=0;i<cookies.length;i++){
	objCookie=cookies[i];
	strCookieName=objCookie.getName();
	strCookieValue=objCookie.getValue();
		if((strCookieName.equals("login11"))&&(strCookieValue.length()>0)){
	loginState="true";
		}
	}
	if(!loginState.equals("true")){
		out.println("<script>window.alert('没有登录，不能查看'); location.href = 'login.jsp'</script>");
	}
%>
            <html>

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <meta name="renderer" content="webkit">
                <meta http-equiv="Cache-Control" content="no-siteapp" />
                <title>工商管理学院教学经费管理系统</title>
                <link rel="shortcut icon" href="favicon.ico">
                <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
                <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
                <link href="../css/animate.min.css" rel="stylesheet">
                <link href="../css/layout.css?v=1.0.0" rel="stylesheet">
            </head>

            <body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
                <div id="wrapper">
                    <!--左侧导航开始-->
                    <nav class="navbar-default navbar-static-side" role="navigation">
                        <div class="nav-close"><i class="fa fa-times-circle"></i> </div>
                        <div class="sidebar-collapse">
                            <ul class="nav" id="side-menu">
                                <li class="nav-header">
                                    <h3 class="fff profile-element"><strong>教学经费管理系统</strong></h3>
                                    <div class="logo-element">经费</div>
                                </li>
                                <li class="active">
                                    <a href="#"> <i class="fa fa-map"></i> <span class="nav-label">项目管理</span> <span class="fa arrow"></span> </a>
                                    <ul class="nav nav-second-level">
                                        <li> <a class="J_menuItem" href="项目列表.jsp" target="iframe0">项目列表</a> </li>
                                        <li> <a class="J_menuItem" href="项目管理.jsp" target="iframe0">项目管理</a> </li>
                                    </ul>
                                </li>

                                <li class="active">
                                    <a href="#"> <i class="fa fa-credit-card"></i> <span class="nav-label">报销管理</span> <span class="fa arrow"></span> </a>
                                    <ul class="nav nav-second-level">
                                        <li> <a class="J_menuItem" href="报销列表.jsp" target="iframe0">待报列表</a> </li>
                                        <li> <a class="J_menuItem" href="账户管理.jsp" target="iframe0">账户管理</a> </li>
                                    </ul>
                                </li>

                                <li class="active">
                                    <a href="#"> <i class="fa fa-book"></i> <span class="nav-label">预算管理</span> <span class="fa arrow"></span> </a>
                                    <ul class="nav nav-second-level">
                                        <li> <a class="J_menuItem" href="添加预算.jsp" target="iframe0">添加预算</a> </li>
                                        <li> <a class="J_menuItem" href="项目说明.jsp" target="iframe0">项目说明</a> </li>
                                    </ul>
                                </li>

                                <li class="active">
                                    <a href="#"> <i class="fa fa-users"></i> <span class="nav-label">用户管理</span>
                                        <span class="fa arrow"></span> </a>
                                    <ul class="nav nav-second-level">
                                        <li> <a class="J_menuItem" href="用户列表.jsp" target="iframe0">用户列表</a> </li>
                                        <li> <a class="J_menuItem" href="用户管理.jsp" target="iframe0">用户管理</a> </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <!--左侧导航结束-->
                    <!--右侧部分开始-->

                    <div id="page-wrapper" class="gray-bg dashbard-1">
                        <div class="row border-bottom">
                            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">

                                <div class="navbar-header "> <a class="navbar-minimalize minimalize-styl-2 btn btn-block " href="#"><i
                class="fa fa-database"></i> </a>
                                </div>
                                <ul class="nav navbar-top-links navbar-right" style="float: none;">
                                    <li>
                                        <h3 class="fff profile-element"><strong>河北科技师范学院-工商管理学院</strong></h3>
                                    </li>

                                    <li>

                                        <a data-toggle="dropdown" class="dropdown-toggle" href="login.jsp"> <span class="text-xs block"><i class="fa fa-user"></i><b class="caret"></b></span> </a>
                                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                            <li><a class="J_menuItem" href="用户列表.jsp" target="iframe0">用户</a> </li>

                                        </ul>
                                    </li>
                                    <li><a href="login_out.jsp" class="J_menuItem" οnclick="javascript:delout();"><i class="fa fa-sign-out"></i>
                退出</a> </li>

                                </ul>
                            </nav>
                        </div>
                        <div class="row J_mainContent" id="content-main">
                            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="项目列表.jsp" frameborder="0" data-id="添加预算.jsp" seamless></iframe>
                        </div>
                    </div>
                    <!--右侧部分结束-->

                </div>
                <script src="../js/jquery.min.js?v=2.1.4"></script>
                <script src="../js/bootstrap.min.js?v=3.3.5"></script>
                <script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
                <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
                <script src="../js/plugins/layer/layer.min.js"></script>
                <script src="../js/hplus.min.js?v=4.0.0"></script>
                <script src="../js/plugins/pace/pace.min.js"></script>
                <script language="javascript">
                    function delout() {
                        if (confirm("您确定要退出么？")) {
                            top.location = "../hrms/login_out.jsp";
                        }
                        return false;
                    }
                    //<a href="index.jsp" onclick="return pro()">退出</a>
                    //<input type="submit" name="Submit" value="删除" style="width:80" οnclick="javascript:delcfm()"> ../hrms/login_out.jsp
                </script>
            </body>

            </html>