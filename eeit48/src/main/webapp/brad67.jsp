<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.eeit48.utils.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	
	<c:if test='${fn:contains(param.name, "brad") }'>
	OK
	</c:if>
	<hr />
	<c:if test='${BradUtils.isExistKey(param.name, "brad") }'>
	OK
	</c:if>
	
	</body>
</html>