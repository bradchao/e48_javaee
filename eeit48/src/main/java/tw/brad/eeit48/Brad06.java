package tw.brad.eeit48;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad06")
public class Brad06 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String r = "";
		String x = request.getParameter("x"); 
		String y = request.getParameter("y"); 
		String op = request.getParameter("op"); 
		if (x != null && y != null) {
			try {
				int intX = Integer.parseInt(x);
				int intY = Integer.parseInt(y);
				int result = 0;
				switch(op) {
					case "1":
						result = intX + intY; r = result + ""; break;
					case "2":
						result = intX - intY; r = result + "";  break;
					case "3":
						result = intX * intY;  r = result + ""; break;
					case "4":
						result = intX / intY;
						int mod = intX % intY;
						r = result + "......" + mod; break;
				}
				
			}catch (Exception e) {
				System.out.println(e.toString());
			}			
		}else {
			x = y = "";
		}
		
		
		//-------------------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.append("<form action='Brad06'>")
			.append("<input name='x' value='" + x + "' >")
			.append("<select name='op'>")
			.append("<option value='1'>+</option>")
			.append("<option value='2'>-</option>")
			.append("<option value='3'>x</option>")
			.append("<option value='4'>/</option>")
			.append("</select>")
			.append("<input name='y' value ='" + y + "'>\n")
			.append("<input type='submit' value='=' />")
			.append("<span>"  +  r +"</span>")
			.append("</form>");
	}

}
