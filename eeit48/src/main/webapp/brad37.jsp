<%
	String name2 = request.getParameter("name");
	String x = request.getParameter("x"); 
	Object lottery2 = request.getAttribute("lottery");
%>
	
	I am <%= name2 %><br />
	x = <%= x %><br />
	lottery = <%= lottery2 %><br />
	