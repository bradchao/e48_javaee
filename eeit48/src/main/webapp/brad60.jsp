<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.eeit48.utils.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/eeit48"
	user="root"
	password="root"
/>
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
		Account: <input type="text" name="account" value="${rs.rows[0].account }" /><br />
		Realname: <input type="text" name="realname" value="${rs.rows[0].realname }"/><br />
		<input type="submit" value="Update" />
	</form>
	</body>
</html>