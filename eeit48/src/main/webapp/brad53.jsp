<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	<c:catch var="error">
	<%
		String n = request.getParameter("n");
		int num = Integer.parseInt(n);
		out.println(num);
	%>
	</c:catch>
	Hello, World<hr />
	${error }
	</body>
</html>