<%
	String name2 = request.getParameter("name");
	String x = request.getParameter("x"); 
	Object lottery0 = request.getAttribute("lottery");
%>
	
	I am <%= name %><br />
	I am <%= name2 %><br />
	x = <%= x %><br />
	lottery = <%= lottery0 %><br />
	lottery = <%= lottery %>
	