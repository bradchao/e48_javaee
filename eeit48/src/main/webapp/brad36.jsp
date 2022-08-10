<%
	String name2 = request.getParameter("name");
	String x = request.getParameter("x"); 
	int lottery2 = (Integer)request.getAttribute("lottery");
%>
	I am <%= name %><br />
	I am <%= name2 %><br />
	x = <%= x %><br />
	lottery = <%= lottery2 %>
