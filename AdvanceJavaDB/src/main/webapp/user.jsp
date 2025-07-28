<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery("select * from user");

%>
<h2>All User Data</h2>
<table border="1" cellpadding="10">
<tr>
   <th>ID</th>
   <th>Username</th>
   <th>Address</th>
   <th>Action</th>
</tr>
<%

  while(rs.next()){
%>

<tr>
<td><%=rs.getInt("id") %></td>
<td><%=rs.getString("username") %></td>
<td><%=rs.getString("address") %></td>
<td>
<a href="editUser.jsp?id=<%=rs.getInt("id")%>">Edit</a>|<a href="deleteUser.jsp?id=<%=rs.getInt("id")%>" onclick="return confirm('Are You sure?');">Delete</a>
</td>	  
</tr>
<%
  }
conn.close();
%>
</table>
</body>
</html>