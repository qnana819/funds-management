<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
        <%
	request.setCharacterEncoding("UTF-8");
	String strproname=request.getParameter("proname");
	String streconomicSubjects=request.getParameter("economicSubjects");
	String strdate=request.getParameter("date");
	String strabstract=request.getParameter("abstract");
	String strexpend=request.getParameter("expend");
	String strdepartment=request.getParameter("department");
	String strapprovalStatus=request.getParameter("approvalStatus"); 
	
	
	
	java.util.Date currentDay=new java.util.Date();
	java.text.SimpleDateFormat formateOne=new 
	java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	/*java.util.Date strDate=formateOne.format(currentDay);*/
	
	if((strproname==null||strproname.length()<=0)||(streconomicSubjects==null||streconomicSubjects.length()<=0)||(strdate==null||strdate.length()<=0)||(strabstract==null||strabstract.length()<=0)||(strexpend==null||strexpend.length()<=0)||(strdepartment==null||strdepartment.length()<=0)||(strapprovalStatus==null||strapprovalStatus.length()<=0)){
		
		out.println("<script>window.alert('有空白处，请填写');</script>");
		response.sendRedirect("addProject.jsp");
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
		
		String sql="insert into project(proname,economicSubjects,date,abstract,expend,department,approvalStatus,time) values('"+strproname+"','"+streconomicSubjects+"','"+strdate+"','"+strabstract+"','"+strexpend+"','"+strdepartment+"','"+strapprovalStatus+"','"+formateOne.format(currentDay)+"')";
		
		stmt.executeUpdate(sql);					
		out.println("添加成功");	
	    out.println("<script>window.alert('添加成功,请跳转到项目管理');location.href='项目管理.jsp'</script>");
		stmt.close();
		conn.close();
		
	}

%>