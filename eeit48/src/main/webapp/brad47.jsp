<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	Account: ${param.account }<br />
	Habbit:<br />
	1 = ${paramValues.habbit[0] }<br />
	2 = ${paramValues.habbit[1] }<br />
	3 = ${paramValues.habbit[2] }<br />
	4 = ${paramValues.habbit[3] }<br />
	5 = ${paramValues.habbit[4] }<br />
	6 = ${paramValues.habbit[5] }<br />
	<hr />
	Method: <%= request.getMethod() %><br />
	Method: ${pageContext.request.method }<br />
	ip : <%= request.getRemoteAddr() %><br />
	ip : ${pageContext.request.remoteAddr }<br />
	Locale : <%= request.getLocale() %><br />
	Locale : ${pageContext.request.locale }<br />
	Language : <%= request.getLocale().getDisplayLanguage() %><br />
	Language : ${pageContext.request.locale.displayLanguage }<br />
	
	</body>
</html>