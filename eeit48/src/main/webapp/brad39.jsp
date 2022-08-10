<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String k1 = request.getParameter("k1");
	String k2 = request.getParameter("k2");
%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	I am brad39<hr />
	x = <%= x %><br />
	y = <%= y %><br />
	k1 = <%= k1 %><br />
	k2 = <%= k2 %><br />
	</body>
</html>