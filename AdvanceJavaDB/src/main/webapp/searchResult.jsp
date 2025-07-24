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
  String username=request.getParameter("username");
  try
  {
	    String sql="select * from user where username=?";
	    PreparedStatement ps=conn.prepareStatement(sql);
	    ps.setString(1,username);
	    ResultSet rs=ps.executeQuery();
	    if(rs.next())
	    {
	    	%>
	    	   <h2>UserFound</h2>
	    	   Username:<%=rs.getString("username") %><br>
	    	   Address:<%=rs.getString("address") %><br>
	    	<%
	    }else{
	    	%>  	
	    	<h3>No User Found with  username:<%=username %></h3>   	
	    	<%   	
	    }    
	    conn.close();
  }catch(Exception t){
	  out.println("Error::"+t.getMessage());
  }
%>
</body>
</html>