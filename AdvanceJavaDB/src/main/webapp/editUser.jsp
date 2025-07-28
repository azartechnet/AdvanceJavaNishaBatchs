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
 
   PreparedStatement ps=conn.prepareStatement("select * from user where id=?");
   ps.setInt(1,id);
   ResultSet rs=ps.executeQuery();
   rs.next();
%>
<h2>EditUser</h2>
<form action="updateUser.jsp" method="post">
<input type="hidden" name="id" value="<%=rs.getInt("id") %>">
UserName:<input type="text" name="username" value="<%=rs.getString("username") %>" required>
<br>
<br>
Address:<input type="text" name="address" value="<%=rs.getString("address") %>" required>
<br>
<br>
<input type="submit" value="update">
</form>
<%
 conn.close();
%>
</body>
</html>