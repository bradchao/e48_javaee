<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] var1 = {"Brad","Eric","Tony","Andy"};
	pageContext.setAttribute("names", var1);
	
	String[] var2 = {"Kevin","Peter","John","Mary"};
	request.setAttribute("names", var2);
	
	String[] var3 = {"aaa","bbb","ccc","ddd"};
	session.setAttribute("names", var3);

	String[] var4 = {"111","222","333","444"};
	application.setAttribute("names", var4);
	
	LinkedList<String> list = new LinkedList<>();
	list.add("aaa");list.add("bbb");list.add("cccc");list.add("ddd");
	pageContext.setAttribute("mylist", list);
	
	HashMap<String,String> map = new HashMap<>();
	map.put("k1", "v1"); map.put("k2", "v2");map.put("k3", "v3");
	pageContext.setAttribute("mymap", map);

%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	${pageScope.names[2] }<br />
	${requestScope.names[2] }<br />
	${sessionScope.names[2] }<br />
	${applicationScope.names[2] }<br />
	<hr />
	${names[2] }
	<hr />
	${mylist[param.i] }<br />
	${mymap["k2"] }<br />
	${mymap.k2 }<br />
	${10 + 3 }<br />
	${param.x + param.y }<br />
	${param.x == 3 }<br />
	
	</body>
</html>