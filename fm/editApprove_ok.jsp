﻿<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
        <%
	request.setCharacterEncoding("UTF-8");
	
	String strEditproname=request.getParameter("editproname");
	String strEditeconomicSubjects=request.getParameter("editeconomicSubjects");
	String strEditdate=request.getParameter("editdate");
	String strEditabstract=request.getParameter("editabstract");
	String strEditexpend=request.getParameter("editexpend");
	String strEditdepartment=request.getParameter("editdepartment");
	String strEditapprovalStatus=request.getParameter("editapprovalStatus");
	String intOne=request.getParameter("txtHidden");

	java.util.Date currentDay=new java.util.Date();
	java.text.SimpleDateFormat formateOne=new 
	java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	/*java.util.Date strDate=formateOne.format(currentDay);*/
	
	Connection conn1;/*创建连接对象*/
	Statement stmt1;/*连接语句*/
	ResultSet rs1;/*返回记录集*/
		
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

	String dbmsName1="sa";/*登录SQL的用户名*/
	String dbmsPass1="123456";/*登录SQL密码*/
	String dbName1="funds-management";/*访问的数据库名*/
		
	String connURL1="jdbc:sqlserver://localhost:1433;DatabaseName="+dbName1+";user="+dbmsName1+";password="+dbmsPass1;
	conn1=DriverManager.getConnection(connURL1);
	stmt1=conn1.createStatement();
		
	
	String sql1="update approve set proname='"+strEditproname+"',economicSubjects='"+strEditeconomicSubjects+"',date='"+strEditdate+"',abstract='"+strEditabstract+"',expend='"+strEditexpend+"',department='"+strEditdepartment+"',approvalStatus='"+strEditapprovalStatus+"',time='"+formateOne.format(currentDay)+"' where proid='"+intOne+"'";

	stmt1.executeUpdate(sql1);	

	out.println("<script>window.alert('修改成功');location.replace('报销列表.jsp')</script>");		
	
	stmt1.close();
	conn1.close();	
	
%>