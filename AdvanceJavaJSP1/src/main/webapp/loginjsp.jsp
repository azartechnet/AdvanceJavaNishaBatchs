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

     String u1=request.getParameter("uname");
	 String p1=request.getParameter("pass");
	 
	 if(u1.equals("admin")&&p1.equals("admin"))
	 {
		//out.println("Your username is::"+u1);
		 //out.println("<br>");
		// out.println("Your password is::"+p1);
		RequestDispatcher rq=request.getRequestDispatcher("success.jsp");
		rq.forward(request, response);
	 }
	 else
	 {
		// out.println("LoginFail!!!");
		
		RequestDispatcher rq=request.getRequestDispatcher("fail.jsp");
		rq.include(request, response);
	 }
%>
</body>
</html>