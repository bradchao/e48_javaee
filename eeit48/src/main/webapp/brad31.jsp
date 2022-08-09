<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
		<table border="1" width="100%">
			<%
				int ROW = 3;
				int START = 1;
				int COL = 3;
				
				for (int k=0; k<ROW; k++){
					out.print("<tr>");
					for (int j=START; j<(START+COL); j++){
						int newj = j + k*COL;
						
						if ((j+k) % 2 == 0){
							out.print("<td bgcolor='yellow'>");
						}else{
							out.print("<td bgcolor='pink'>");
						}
						
						for (int i=1; i<=9; i++){
							int r = newj * i;
							out.println(String.format("%d x %d = %d<br />", newj, i, r));
						}
						out.print("</td>");
					}
					out.print("</tr>");
				}
			%>
</table>
	</body>
</html>