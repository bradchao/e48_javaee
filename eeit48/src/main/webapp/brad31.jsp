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
			<tr>
				<%
					for (int j=2; j<6; j++){
						out.print("<td>");
						for (int i=1; i<=9; i++){
							int r = j * i;
							out.println(String.format("%d x %d = %d<br />", j, i, r));
						}
						out.print("</td>");
					}
				%>
			</tr>
			<tr>
				<td>
					2 x 1 = 2<br />
					2 x 1 = 2<br />
					2 x 1 = 2<br />
					2 x 1 = 2<br />
				</td>
				<td>
					2 x 1 = 2<br />
					2 x 1 = 2<br />
					2 x 1 = 2<br />
					2 x 1 = 2<br />
				</td>
				<td>
					2 x 1 = 2<br />
					2 x 1 = 2<br />
					2 x 1 = 2<br />
					2 x 1 = 2<br />
				</td>
				<td>
					2 x 1 = 2<br />
					2 x 1 = 2<br />
					2 x 1 = 2<br />
					2 x 1 = 2<br />
				</td>
			</tr>
		</table>
	</body>
</html>