<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String u=request.getParameter("uname");
   if(u.equals("admin"))
   {
	   %>
	     <jsp:forward page="Page3.jsp"></jsp:forward>
	   <%
   }
   else
   {
	   %>
	     <jsp:include page="Page1.jsp"></jsp:include>
	   <%
   }
%>
</body>
</html>