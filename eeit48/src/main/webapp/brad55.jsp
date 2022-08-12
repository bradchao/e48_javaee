<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%
	String[] names = {"Brad","Andy","Mark","Mary","Amy"};
	pageContext.setAttribute("cust", names);
%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	
	<table border="1" width="100%">
		<tr>
			<th>Name</th>
		</tr>
		<c:forEach items="${cust }" var="name">
			<tr>
				<td>${name }</td>
			</tr>
		</c:forEach>
	</table>
	
	</body>
</html>