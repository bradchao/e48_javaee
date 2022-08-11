<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	
	<%
		String method = request.getMethod();
	
		ServletRequest sr = pageContext.getRequest();
		if (sr instanceof HttpServletRequest) out.println("OK");
		if (request == sr) out.println("OK");
	
	
	
	%>
	
	</body>
</html>