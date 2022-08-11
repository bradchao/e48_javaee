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
	<c:set var="x" value="123" /><!-- pageScope x = 123 -->
	<c:set var="x" value="124" scope="request" />
	Page: ${x }<br />
	Request: ${requestScope.x }<br />
	<c:out value="Hello, World" /><br />
	<%= "Hello, World<br />" %>
	<c:out value="${x }" /><br />
	<c:out value="${param.y }" default="novalue" /><br />
	
	<jsp:useBean id="member" class="tw.brad.eeit48.utils.Member"></jsp:useBean>
	<c:set target="${member }" property="id">1122</c:set>
	<c:set target="${member }" property="account">Brad</c:set>
	<c:set target="${member }" property="realname">Brad Chao</c:set>
	${member.id } : ${member.account } : ${member.realname }<br />
	${member }<br />
	<c:remove var="member"/>
	${member }<br />
	
	</body>
</html>