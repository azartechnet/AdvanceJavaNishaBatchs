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
String username=request.getParameter("username");
String address=request.getParameter("address");
try
{
	String sql="update user set username=?,address=? where id=?";
	PreparedStatement ps=conn.prepareStatement(sql);
	ps.setString(1,username);
	ps.setString(2,address);
	ps.setInt(3, id);
	int row=ps.executeUpdate();
	if(row>0)
	{
		response.sendRedirect("user.jsp");
		
	}
	else
	{
		out.println("Updated failed...");
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