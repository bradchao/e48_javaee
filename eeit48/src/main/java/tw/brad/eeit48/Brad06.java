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
		if (x != null && y != null) {
			try {
				int intX = Integer.parseInt(x);
				int intY = Integer.parseInt(y);
				int result = intX + intY;
				r = result + "";
			}catch (Exception e) {
			}			
		}else {
			x = y = "";
		}
		
		
		//-------------------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.append("<form action='Brad06'>")
			.append("<input name='x' value='" + x + "' >")
			.append("+")
			.append("<input name='y' value ='" + y + "'>\n")
			.append("<input type='submit' value='=' />")
			.append("<span>"  +  r +"</span>")
			.append("</form>");
	}

}
