<%@page import="tw.brad.eeit48.utils.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member1 = new Member();
	member1.setId(1);
	member1.setAccount("brad");
	member1.setRealname("Brad Chao");
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	Member1: 
		<%= member1.getId() %> : <%= member1.getAccount() %> : <%= member1.getRealname() %><br />
		 
	</body>
</html>