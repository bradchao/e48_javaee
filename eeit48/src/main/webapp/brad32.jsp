<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="brad33.jsp" %>    
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	
	int intX = Integer.parseInt(x);
	int intY = Integer.parseInt(y);
	int result = intX + intY;
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
		<form>
			<input name="x">
			+
			<input name="y">
			<input type="submit" value="=" />
			<span><%= result %></span>
		</form>	
	</body>
</html>