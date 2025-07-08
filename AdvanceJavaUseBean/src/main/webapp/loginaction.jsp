<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="r" class="a.Process"></jsp:useBean>
Record is::<jsp:setProperty property="*" name="r"/>
<jsp:getProperty property="uname" name="r"/>
<jsp:getProperty property="pass" name="r"/>
<%-- <%

   r.setUname("sdlc");

   System.out.println("Your UserName is::"+r.getUname());
%> --%>
</body>
</html>