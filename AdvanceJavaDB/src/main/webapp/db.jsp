<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String dbURL="jdbc:mysql://localhost:3306/jspdb";
   String dbUser="root";
   String dbPass="root";
   Connection conn=null;
   try
   {
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 conn=DriverManager.getConnection(dbURL,dbUser,dbPass);
   }
   catch(Exception t)
   {
	   out.println("DBError"+t.getMessage());
   }
%>
</body>
</html>