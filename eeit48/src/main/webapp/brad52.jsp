<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	<c:set var="x" value="123" /><!-- pageScope x = 123 -->
	<c:set var="x" value="124" scope="request" />
	Page: ${x }<br />
	Request: ${requestScope.x }<br />
	<c:out value="Hello, World" /><br />
	<%= "Hello, World<br />" %>
	<c:out value="${x }" /><br />
	<c:out value="${param.y }" default="novalue" /><br />
	
	
	</body>
</html>