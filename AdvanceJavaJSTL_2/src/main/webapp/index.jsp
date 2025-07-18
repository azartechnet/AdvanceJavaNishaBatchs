<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <h3>Number Format</h3>
<c:set var="balance" value="120000.2345"/>
<p>Formatted Number(1)
<fmt:formatNumber value="${balance}" type="currency"></fmt:formatNumber></p>
<p>Formatted Number(2)
<fmt:formatNumber type="number" maxIntegerDigits="3" value="${balance}"></fmt:formatNumber></p>
<p>Formatted Number(3)
<fmt:formatNumber type="number" maxFractionDigits="3" value="${balance}"></fmt:formatNumber>
</p>
<p>Formatted Number(4)
<fmt:formatNumber type="percent" maxIntegerDigits="3" value="${balance}"></fmt:formatNumber>
</p>

<p>Formatted Number(5)
<fmt:formatNumber type="number" pattern="###.###E0" value="${balance}"></fmt:formatNumber>
</p>
<p>
  Currency in USA
  <fmt:setLocale value="en_US"/>
  <fmt:formatNumber value="${balance}" type="currency"></fmt:formatNumber>
</p> --%>

<h3>Number Format:</h3>
<c:set var="now" value="<%=new java.util.Date() %>"/>
<p>Formatted Date(1):
<fmt:formatDate type="time" value="${now}"/></p>
<p>Formatted Date(2):
<fmt:formatDate type="date" value="${now}"/></p>
<p>Formatted Date(3):
<fmt:formatDate type="both" value="${now}"/></p>
</body>
</html>