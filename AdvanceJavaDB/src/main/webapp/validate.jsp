<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
 <%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String username=request.getParameter("username");
String password=request.getParameter("password");
try
{
	String sql="select * from admin where username=? and password=?";
	PreparedStatement pst=conn.prepareStatement(sql);
	
	pst.setString(1,username);
	pst.setString(2,password);
	ResultSet rs=pst.executeQuery();
	
	if(rs.next())
	{
		out.println("LoginSuccess...");
	}
	else
	{
		out.println("LoginFail!!!");
	}
}
catch(Exception t)
{
	out.println(t);
}

%>
</body>
</html>