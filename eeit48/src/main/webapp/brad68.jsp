<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="brad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	<h1>Brad Big Company</h1>
	<hr />
	<brad:test1 />
	<hr />
	<brad:test2 />
	<hr />
	<brad:sayHello who="Brad" />
	<hr />
	<brad:calc x="${param.x }" y="${param.y }">
		${param.x } + ${param.y } = ${add }<br />
		${param.x } - ${param.y } = ${sub }<br />
		${param.x } x ${param.y } = ${multi }<br />
		${param.x } / ${param.y } = ${devide }<br />
	</brad:calc>
	
	</body>
</html>