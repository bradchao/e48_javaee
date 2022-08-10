<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="brad33.jsp" %>    
<%
	String x, y, result, op;
	try{
		x = request.getParameter("x");
		y = request.getParameter("y");
		op = request.getParameter("op");
		
		int intX = Integer.parseInt(x);
		int intY = Integer.parseInt(y);
		int r, mod;
		switch(op){
			case "1": 
				r = intX + intY; result = r + ""; break;
			case "2": 
				r = intX - intY; result = r + ""; break;
			case "3": 
				r = intX * intY; result = r + ""; break;
			case "4": 
				r = intX / intY; mod = intX % intY; result = r + " ...... " + mod; break;
			default:
				result = "";
		}
		
	}catch(Exception e){
		//System.out.println(e.toString());
		//out.print("Haaaaaaa!");
		x = ""; y = ""; result = "";op = "";
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
			<select name="op">
				<option value="1" <%= (op.equals("1")?"selected":"") %>>+</option>
				<option value="2" <%= (op.equals("2")?"selected":"") %>>-</option>
				<option value="3" <%= (op.equals("3")?"selected":"") %>>x</option>
				<option value="4" <%= (op.equals("4")?"selected":"") %>>/</option>
			</select>
			<input name="y" value="<%= y %>">
			<input type="submit" value="=" />
			<span><%= result %></span>
		</form>	
	</body>
</html>