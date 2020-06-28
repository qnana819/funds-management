<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
        <%
	request.setCharacterEncoding("UTF-8");
	String struserName=request.getParameter("userName");
	String strpassWord=request.getParameter("passWord");
	
	java.util.Date currentDay=new java.util.Date();
	java.text.SimpleDateFormat formateOne=new 
	java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	/*java.util.Date strDate=formateOne.format(currentDay);*/
	
	if((struserName==null||struserName.length()<=0)||(strpassWord==null||strpassWord.length()<=0)){
		
		out.println("<script>window.alert('有空白处，请填写');</script>");
		response.sendRedirect("addUsers.jsp");
	}else{
		
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
		
		String sql="insert into user1(userName,passWord,time) values('"+struserName+"','"+strpassWord+"','"+formateOne.format(currentDay)+"')";
		
		stmt.executeUpdate(sql);					
		out.println("添加成功");	
	    out.println("<script>window.alert('添加成功,请跳转到用户列表');location.href='用户列表.jsp'</script>");
		stmt.close();
		conn.close();
		
	}

%>