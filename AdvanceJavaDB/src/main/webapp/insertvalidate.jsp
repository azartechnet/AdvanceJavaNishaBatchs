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

String u1=request.getParameter("name");
String a1=request.getParameter("address");

try
{
	String str1="insert into user (username,address) values(?,?)";
	PreparedStatement pst=conn.prepareStatement(str1);
	
	pst.setString(1,u1);
	pst.setString(2,a1);
	int result=pst.executeUpdate();
	
	if(result>0)
	{
		out.println("<h3>DataInserted..</h3>");
	}
	else
	{
		out.println("<h3>Failed...</h3>");
	}
	conn.close();
}
catch(Exception t)
{
	out.println(t);
}



%>
</body>
</html>