<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	I am brad38<hr />
	<jsp:forward page="brad39.jsp">
		<jsp:param value="v1" name="k1"/>
		<jsp:param value="v2" name="k2"/>
	</jsp:forward>
	</body>
</html>