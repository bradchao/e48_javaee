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
<sql:query var="rs">
	SELECT * FROM member
</sql:query>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>

	
	<a href="brad59.jsp">New</a>
	<hr />
	<table border="1" width="100%">
		<tr>
			<th>ID #</th>
			<th>Account</th>
			<th>Realname</th>
		</tr>
		<c:forEach items="${rs.rows }" var="row">
			<tr>
				<td>${row.id }</td>
				<td>${row.account }</td>
				<td>${row.realname }</td>
			</tr>
		</c:forEach>		
	</table>
	
	
	</body>
</html>