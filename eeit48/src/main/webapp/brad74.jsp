<%@page import="tw.brad.eeit48.utils.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");
	if (account == null || passwd == null){
		response.sendRedirect("brad73.jsp");
	}
	
	if (account.equals("brad") && passwd.equals("123456")){
		Member member = new Member();
		member.setId(1); member.setAccount("brad"); member.setRealname("Brad Chao");
		
		session.setMaxInactiveInterval(30);
		session.setAttribute("member", member);
		response.sendRedirect("brad75.jsp");
	}else{
		response.sendRedirect("brad73.jsp");
	}


%>