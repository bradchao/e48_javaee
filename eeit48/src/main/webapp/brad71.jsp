<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.eeit48.utils.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%
	request.setCharacterEncoding("UTF-8");
%> 
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/eeit48"
	user="root"
	password="root"
/>
<sql:query var="rs">
	SELECT * FROM member WHERE id = ?
	<sql:param>${param.id }</sql:param>
</sql:query>
${rs.rows[0].id }: ${rs.rows[0].account }: ${rs.rows[0].realname }
