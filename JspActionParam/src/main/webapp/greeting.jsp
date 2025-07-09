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

String u1=request.getParameter("user");

%>
<h2>Hello from <%=u1 %>!</h2>
</body>
</html>