<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.eeit48.utils.*" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	Math.random() => ${Math.random() }<br />
	${BradUtils.sayYa(param.name) }<br />
	<hr />
	<form action="brad45.jsp">
		<input type="text" name="name" value="${param.name }" /><br />
		<input name="x" value="${param.x }">
		+
		<input name="y" value="${param.y }">
		<input type="submit" value="=" />
		<span>${BradUtils.plus(param.x, param.y) }</span>
	</form>	
	
	</body>
</html>