<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.eeit48.utils.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:if test="${!empty param.account }">
	<c:if test="${pageContext.request.method == 'GET' }" >
		<c:redirect url="brad58.jsp"></c:redirect>
	</c:if>

	<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/eeit48"
		user="root"
		password="root"
	/>
	<sql:update>
		INSERT INTO member (account,passwd,realname) VALUES (?,?,?)
		<sql:param>${param.account }</sql:param>
		<sql:param>${BradUtils.encPasswd(param.passwd) }</sql:param>
		<sql:param>${param.realname }</sql:param>
	</sql:update>
	<c:redirect url="brad58.jsp"></c:redirect>
</c:if>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	<form method="post">
		Account: <input type="text" name="account" /><br />
		Password: <input type="password" name="passwd" /><br />
		Realname: <input type="text" name="realname" /><br />
		<input type="submit" value="Add" />
	</form>
	</body>
</html>