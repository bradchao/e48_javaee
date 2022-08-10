<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	int id2 = Integer.parseInt(id);
	String account = request.getParameter("account");
	String realname = request.getParameter("realname");
%>    
<jsp:useBean id="member" class="tw.brad.eeit48.utils.Member"></jsp:useBean>
<jsp:setProperty property="id" value="<%= id2 %>" name="member"/>
<jsp:setProperty property="account" value="<%= account %>" name="member"/>
<jsp:setProperty property="realname" value="<%= realname %>" name="member"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
		Member:
		<jsp:getProperty property="id" name="member"/> :
		<jsp:getProperty property="account" name="member"/> :
		<jsp:getProperty property="realname" name="member"/>
	</body>
</html>