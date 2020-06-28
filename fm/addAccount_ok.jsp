<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
        <%
	request.setCharacterEncoding("UTF-8");
	String straccount_name=request.getParameter("account_name");
	String strID_card=request.getParameter("ID_card");
	String strID_number=request.getParameter("ID_number");
	String strabstract=request.getParameter("abstract");
	String strexpend=request.getParameter("expend");
	String strbank_name=request.getParameter("bank_name");
	String strbank_number=request.getParameter("bank_number"); 
	String strcall_number=request.getParameter("call_number");
	
	
	java.util.Date currentDay=new java.util.Date();
	java.text.SimpleDateFormat formateOne=new 
	java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	/*java.util.Date strDate=formateOne.format(currentDay);*/
	
	if((straccount_name==null||straccount_name.length()<=0)||(strID_card==null||strID_card.length()<=0)||(strID_number==null||strID_number.length()<=0)||(strabstract==null||strabstract.length()<=0)||(strexpend==null||strexpend.length()<=0)||(strbank_name==null||strbank_name.length()<=0)||(strbank_number==null||strbank_number.length()<=0)||(strcall_number==null||strcall_number.length()<=0)){
		
		out.println("<script>window.alert('有空白处，请填写');</script>");
		response.sendRedirect("addAccount.jsp");
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
		
		String sql="insert into bank_account(account_name,ID_card,ID_number,abstract,expend,bank_name,bank_number,call_number,time) values('"+straccount_name+"','"+strID_card+"','"+strID_number+"','"+strabstract+"','"+strexpend+"','"+strbank_name+"','"+strbank_number+"','"+strcall_number+"','"+formateOne.format(currentDay)+"')";
		
		stmt.executeUpdate(sql);					
		out.println("添加成功");	
	    out.println("<script>window.alert('添加成功,请跳转到账户管理');location.href='账户管理.jsp'</script>");
		stmt.close();
		conn.close();
		
	}

%>