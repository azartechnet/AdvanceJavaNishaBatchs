<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>MainPage_Include Example</h1>
<jsp:include page="greeting.jsp">
<jsp:param value="azar" name="user"/>
</jsp:include>
</body>
</html>