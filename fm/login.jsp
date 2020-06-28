<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>工商管理学院教学经费管理系统</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="shortcut icon" href="favicon.ico">
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="../css/reset.css">
        <link rel="stylesheet" href="../css/supersized.css">
        <link rel="stylesheet" href="../css/style.css">


    </head>

    <body>
        <!-- http://localhost:8080/funds-management/fm/index.jsp -->
        <div class="page-container">
            <h1>工商管理学院教学经费管理系统</h1>
            <form action="login_ok.jsp" method="get">
                <input type="text" name="username" class="username" placeholder="用户名">
                <input type="password" name="password" class="password" placeholder="密码">
                <button type="submit">登录</button>
                <div class="error"><span>+</span></div>
            </form>

        </div>


        <!-- Javascript -->
        <script src="../js/jquery.min.js"></script>
        <script src="../js/supersized.3.2.7.min.js"></script>
        <script src="../js/supersized-init.js"></script>
        <script src="../js/scripts.js"></script>

    </body>

    </html>