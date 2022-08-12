<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
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

	<c:catch var="error">
		<%
			Class.forName("com.mysql.cj.jdbc.Driver");
			Properties prop = new Properties();
			prop.put("user", "root");
			prop.put("password", "root");
			Connection conn = DriverManager.getConnection(
				"jdbc:mysql://localhost/eeit48", prop);
			
			String sql = "INSERT INTO cust (cname,tel,birthday)" + 
				" VALUES (?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "Eric");
			pstmt.setString(2, "333");
			pstmt.setString(3, "1999-02-03");
			pstmt.executeUpdate();
		%>    
	</c:catch>	
	${error }


	
	</body>
</html>