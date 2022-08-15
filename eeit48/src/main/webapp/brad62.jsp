<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/eeit48"
	user="root"
	password="root"
/>
<sql:update>
	INSERT INTO member (account,passwd,realname) VALUES (?,?,?)
	<sql:param>${param.test }</sql:param>
	<sql:param>${param.test }</sql:param>
	<sql:param>${param.test }</sql:param>	
</sql:update>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	${param.test }	
	</body>
</html>