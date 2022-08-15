<%@page import="org.json.JSONObject"%>
<%@page import="netscape.javascript.JSObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = 
		DriverManager.getConnection(
			"jdbc:mysql://localhost/eeit48","root","root");
	String sql = "SELECT * FROM souvenir LIMIT 3";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	JSONArray root = new JSONArray();
	while (rs.next()){
		JSONObject obj = new JSONObject();
		obj.put("sname", rs.getString("sname"));
		obj.put("tel", rs.getString("tel"));
		obj.put("addr", rs.getString("addr"));
		root.put(obj);
	}
	out.print(root.toString());
	

%>
