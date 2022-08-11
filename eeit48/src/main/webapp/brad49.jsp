<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] var1 = {"Brad","Eric","Tony","Andy"};
	pageContext.setAttribute("names", var1);
	
	String[] var2 = {"Kevin","Peter","John","Mary"};
	request.setAttribute("names", var2);
	
	String[] var3 = {"aaa","bbb","ccc","ddd"};
	session.setAttribute("names", var3);

	String[] var4 = {"111","222","333","444"};
	application.setAttribute("names", var4);

%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	
	</body>
</html>