<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>hrms - unauthorized 错误</title>
    <meta name="keywords" content="没有权限">
    <meta name="description" content="没有权限">

    <link rel="shortcut icon" href="<%=request.getContextPath()%>/favicon.ico">
	<link href="<%=request.getContextPath()%>/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/css/animate.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/layout.css?v=1.0.0" rel="stylesheet">
    <base target="_blank">
</head>

<body class="gray-bg">
    <div class="middle-box text-center animated fadeInDown">
        <h1 >没有</h1>
        <h1 >权限</h1>
        <h3 class="font-bold">unauthorized</h3>
        <div class="error-desc">
            		抱歉，如想访问请申请权限~
        </div>
    </div>
    <script src="<%=request.getContextPath()%>/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js?v=3.3.5"></script>
    
</body>

</html>