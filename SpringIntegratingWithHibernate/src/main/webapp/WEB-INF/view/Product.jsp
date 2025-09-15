<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action="addproduct" method="get">
ProductId:<input type="text" name="t1"/>
ProductCost:<input type="text" name="t2"/>
ProductName:<input type="text" name="t3"/>

<input type="submit" value="Login"/> 

</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>