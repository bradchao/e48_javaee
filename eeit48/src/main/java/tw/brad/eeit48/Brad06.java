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
			x = y = op = "";
		}
		
		
		//-------------------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.append("<form action='Brad06'>\n")
			.append("<input name='x' value='" + x + "' >\n")
			.append("<select name='op'>\n")
			.append("<option value='1' " + (op.equals("1")?"selected":"") + ">+</option>\n")
			.append("<option value='2' " + (op.equals("2")?"selected":"") + ">-</option>\n")
			.append("<option value='3' " + (op.equals("3")?"selected":"") + ">x</option>\n")
			.append("<option value='4' " + (op.equals("4")?"selected":"") + ">/</option>\n")
			.append("</select>\n")
			.append("<input name='y' value ='" + y + "'>\n")
			.append("<input type='submit' value='=' />\n")
			.append("<span>"  +  r +"</span>\n")
			.append("</form>\n");
	}

}
