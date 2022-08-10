<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="brad33.jsp" %>    
<%
	String x, y, result;
	try{
		x = request.getParameter("x");
		y = request.getParameter("y");
		
		int intX = Integer.parseInt(x);
		int intY = Integer.parseInt(y);
		int r = intX + intY;
		result = r + "";
	}catch(Exception e){
		//System.out.println(e.toString());
		//out.print("Haaaaaaa!");
		x = ""; y = ""; result = "";
	}
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
		<form>
			<input name="x" value="<%= x %>">
			+
			<input name="y" value="<%= y %>">
			<input type="submit" value="=" />
			<span><%= result %></span>
		</form>	
	</body>
</html>