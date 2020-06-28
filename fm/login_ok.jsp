<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>

        <!-- 2020-4-15 form Qnan -->
        <%
	
	String strName=request.getParameter("username");
	String strPass=request.getParameter("password");
	if((strName==null||strName.length()<=0)||(strPass==null||strPass.length()<=0)){
		response.sendRedirect("login.jsp");
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
		
		String sql="select * from user1 where userName='"+strName+"' and passWord='"+strPass+"'";
		
		rs=stmt.executeQuery(sql);
		
		if(rs.next()){
		   
			String str2=rs.getString("userName");
			String str3=rs.getString("passWord");
			
			
			out.println("用户名是："+str2+"<br>");
			out.println("密码是："+str3+"<br>");

			out.println("欢迎"+strName+"登录");
		
			Cookie cooke1=new Cookie("login11",strName);
			cooke1.setMaxAge(60*60*2);
			response.addCookie(cooke1);
			
			
			out.println("<script>window.alert('欢迎登录');location.href='index.jsp'</script>");
			
		}else{
			out.println("<script>window.alert('用户名或者密码有误，请返回登录页面');location.href='login.jsp'</script>");
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
	}

%>