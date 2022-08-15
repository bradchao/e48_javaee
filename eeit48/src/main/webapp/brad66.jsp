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
	<c:if test="${! empty param.key }">
		<c:import var="data" url="http://localhost:8080/eeit48/brad65.jsp">
			<c:param name="key" value="${param.key }" />
		</c:import>
	</c:if>
	<c:if test="${empty param.key }">
		<c:import var="data" url="http://localhost:8080/eeit48/brad65.jsp"></c:import>
	</c:if>
	
	<%
		String dataString = (String)pageContext.getAttribute("data");
		
		LinkedList<HashMap<String,String>> foods = new LinkedList<>();
		JSONArray root = new JSONArray(dataString);
		for (int i=0; i< root.length(); i++){
			JSONObject row = root.getJSONObject(i);
			HashMap<String,String> food = new HashMap<>();
			food.put("name", row.getString("sname"));
			food.put("tel", row.getString("tel"));
			food.put("addr", row.getString("addr"));
			foods.add(food);
		}
	
		pageContext.setAttribute("foodData", foods);
	%>
	<form>
	Keyword: <input type="text" name="key" />
	<input type="submit" value="Search" />
	</form>
	<table border="1" width="100%">
		<tr>
			<th>Name</th>
			<th>Address</th>
			<th>Tel</th>
		</tr>
		<c:forEach items="${foodData }" var="food">
			<tr>
				<td>${food.name }</td>
				<td>${food.addr }</td>
				<td>${food.tel }</td>
			</tr>
		</c:forEach>
	</table>
	
	</body>
</html>