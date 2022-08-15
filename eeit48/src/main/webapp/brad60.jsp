<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.eeit48.utils.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%
	request.setCharacterEncoding("UTF-8");
%> 
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/eeit48"
	user="root"
	password="root"
/>
<c:if test="${!empty param.id }">
	<sql:update>
		UPDATE member SET account = ?, realname = ? WHERE id = ?
		<sql:param>${param.account }</sql:param>
		<sql:param>${param.realname }</sql:param>
		<sql:param>${param.id }</sql:param>
	</sql:update>
	<c:redirect url="brad58.jsp"></c:redirect>
</c:if>

<sql:query var="rs">
	SELECT * FROM member WHERE id =?
	<sql:param>${param.editid }</sql:param>
</sql:query>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	<form method="post">
		<input type="hidden" name="id" value="${rs.rows[0].id }">
		Account: <input type="text" name="account" value="${rs.rows[0].account }" /><br />
		Realname: <input type="text" name="realname" value="${rs.rows[0].realname }"/><br />
		<input type="submit" value="Update" />
	</form>
	</body>
</html>