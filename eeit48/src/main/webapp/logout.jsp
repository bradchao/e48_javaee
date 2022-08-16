<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	// session.removeAttribute("member");
	response.sendRedirect("brad73.jsp");
%>