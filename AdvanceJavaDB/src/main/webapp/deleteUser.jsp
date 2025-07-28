<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  int id=Integer.parseInt(request.getParameter("id"));
try
{
	String sql="delete from user where id=?";
	PreparedStatement ps=conn.prepareStatement(sql);
	ps.setInt(1,id);
	int rows=ps.executeUpdate();
	if(rows>0)
	{
		response.sendRedirect("user.jsp");
	}
	else
	{
		out.println("delete failed..");
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