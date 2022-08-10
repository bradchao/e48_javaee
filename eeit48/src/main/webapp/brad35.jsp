<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	if (name == null) name = "World";
	
	int lottery = (int)(Math.random()*49+1);
	request.setAttribute("lottery", lottery);
	
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	Welcome, <%= name %>
	<hr />
	<%@ include file="brad36.jsp" %>
	<hr />
	<jsp:include page="brad37.jsp" />
	<hr />
	</body>
</html>