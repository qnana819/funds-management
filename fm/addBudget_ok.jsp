<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
        <%							 
	request.setCharacterEncoding("UTF-8");
	String strprosort=request.getParameter("prosort");
	String strproname=request.getParameter("proname");
	String strfunds=request.getParameter("funds");
	String strgist=request.getParameter("gist");
	String strexplain=request.getParameter("explain");	
	
	java.util.Date currentDay=new java.util.Date();
	java.text.SimpleDateFormat formateOne=new 
	java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	/*java.util.Date strDate=formateOne.format(currentDay);*/
	
	if((strprosort==null||strprosort.length()<=0)||(strproname==null||strproname.length()<=0)||(strfunds==null||strfunds.length()<=0)||(strgist==null||strgist.length()<=0)||(strexplain==null||strexplain.length()<=0)){
		response.sendRedirect("addBudget.jsp");
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
		
		String sql="insert into budget(prosort,proname,funds,gist,explain,time) values('"+strprosort+"','"+strproname+"','"+strfunds+"','"+strgist+"','"+strexplain+"','"+formateOne.format(currentDay)+"')";
		
		stmt.executeUpdate(sql);					
		//out.println("添加成功");	
	    out.println("<script>window.alert('添加成功,请跳转到对应页面');location.href='添加预算.jsp'</script>");
		stmt.close();
		conn.close();
		
	}

%>