<%@page import="tw.brad.eeit48.utils.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	if (name == null) name = "World";
	
	int lottery = (int)(Math.random()*49+1);
	request.setAttribute("lottery", lottery);
	
	int lottery1 = (int)(Math.random()*49+1);
	int lottery2 = (int)(Math.random()*49+1);
	
	Student s1 = new Student(10,20,30,"Brad");
	
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
	<jsp:include page="brad37.jsp">
		<jsp:param value="<%= lottery1 %>" name="key1"/>
		<jsp:param value="<%= lottery2 %>" name="key2"/>
	</jsp:include>
	<hr />
	<%= s1 %>
	</body>
</html>