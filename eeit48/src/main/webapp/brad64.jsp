<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
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
		//out.print(dataString);
		
		LinkedList<HashMap<String,String>> foods = new LinkedList<>();
		JSONArray root = new JSONArray(dataString);
		for (int i=0; i< root.length(); i++){
			JSONObject row = root.getJSONObject(i);
		}
	
		pageContext.setAttribute("foodData", foods);
	%>
	
	<table border="1" width="100%">
		<tr>
			<th>Name</th>
			<th>Address</th>
			<th>Tel</th>
		</tr>
		<c:forEach items="${foodData }" var="">
		
		</c:forEach>
	</table>
	
	</body>
</html>