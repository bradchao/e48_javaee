<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- EL => Expression Language ${} -->  
<jsp:useBean id="member" class="tw.brad.eeit48.utils.Member"></jsp:useBean>
<jsp:setProperty property="id" value="${param.id }" name="member"/>
<jsp:setProperty property="account" value="${param.account }" name="member"/>
<jsp:setProperty property="realname" value="${param.realname }" name="member"/>
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