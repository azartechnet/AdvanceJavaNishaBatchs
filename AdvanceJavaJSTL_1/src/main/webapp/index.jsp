<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <c:out value="welcome"/>
<c:set var="salary" scope="session" value="${2000*2}"/>
<c:out value="${salary}"/> --%>

<%-- <c:set var="salary" scope="session" value="${2000*2}"/>
<p>Before Remove Value:
<c:out value="${salary}"/></p>
<c:remove var="salary"/>
<p>After Remove the value is::<c:out value="${salary}"/></p> --%>

<%-- 	<c:set var="salary" scope="session" value="${2000*2}" />
	<c:if test="${salary>2000}">
		<p>
			My Salary is::
			<c:out value="${salary}" />
		</p>
	</c:if> --%>

	<%-- <c:set var="salary" scope="session" value="${2000}" />
	<p>
		Your salary is:
		<c:out value="${salary}" />
	</p>
	<c:choose>
		<c:when test="${salary>5000}">
		Salary is very good
		</c:when>
		<c:otherwise>
			No Comment sir...
		</c:otherwise>
	</c:choose> --%>
	
	<%-- <c:forEach var="i" begin="1" end="5">
	      Item<c:out value="${i}"/>
	</c:forEach> --%>
<%-- 	<c:import var="data" url="https://github.com/azartechnet"/>
	<c:out value="${data}"/>
 --%>
 <h2>Welcome Page</h2>
 <c:url var="myLink" value="welcome.jsp">
 <c:param name="name" value="mohamedazar"/>
 <c:param name="role" value="Trainer"/>
 </c:url>
 
 <a href="${myLink}">GoTo Welcome Page</a>
 
 
 
 <c:redirect url="http://www.google.com">
 
 </c:redirect>
 </body>
</html>