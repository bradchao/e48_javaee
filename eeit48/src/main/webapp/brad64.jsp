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
	<c:import var="data" url="https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelFood.aspx"></c:import>
	<%
		String dataString = (String)pageContext.getAttribute("data");
		out.print(dataString);
	
	%>
	
	</body>
</html>