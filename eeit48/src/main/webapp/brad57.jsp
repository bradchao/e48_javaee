<%@ page import="javax.servlet.jsp.jstl.sql.Result" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/eeit48"
	user="root"
	password="root"
/>	
<sql:query var="rs">
	SELECT * FROM souvenir
</sql:query>	

<c:set var="rpp" value="10" />
<c:set var="pages" value="${rs.rowCount % rpp == 0?rs.rowCount / rpp : (rs.rowCount - (rs.rowCount % rpp)) / rpp + 1 }" />
<c:set var="page" value="${param.page == null? 1 : param.page }" />
<c:set var="start" value="${(page -1) * rpp }" />
<c:set var="prev" value="${page - 1 == 0? 1 : page - 1 }" />
<c:set var="next" value="${page >= pages? page : page + 1 }" />

<sql:query var="rs1">
	SELECT * FROM souvenir LIMIT ${start }, ${rpp }
</sql:query>	

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	<table border="1" width="100%">
		<tr>
			<th>ID #</th>
			<th>Name</th>
			<th>Tel</th>
			<th>Address</th>
			<th>Image</th>
		</tr>
		<c:forEach items="${rs1.rows }" var="row">
			<tr>
				<td>${row.id }</td>
				<td>${row.sname }</td>
				<td>${row.tel }</td>
				<td>${row.addr }</td>
				<td><img src='${row.picurl }' width='100px' height='60px'></td>
			</tr>
		</c:forEach>
	</table>
	
	
	</body>
</html>