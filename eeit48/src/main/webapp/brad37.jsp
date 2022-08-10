<%
	String name2 = request.getParameter("name");
	String x = request.getParameter("x"); 
	Object lottery0 = request.getAttribute("lottery");
	
	String lottery1 = request.getParameter("key1");
	String lottery2 = request.getParameter("key2");
	
%>
	
	I am <%= name2 %><br />
	x = <%= x %><br />
	lottery0 = <%= lottery0 %><br />
	lottery1 = <%= lottery1 %><br />
	lottery2 = <%= lottery2 %><br />
	