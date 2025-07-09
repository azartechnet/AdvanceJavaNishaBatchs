<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <form action="greeting.jsp">
<label>City</label>
<input type="text" name="city"/>
<input type="submit" value="ClickHere"/>
</form> -->

<h1>MainPage-Forward Example</h1>
<jsp:forward page="greeting.jsp">
  <jsp:param value="chennai" name="city"/>
</jsp:forward>

</body>
</html>