package tw.brad.eeit48;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brad10
 */
@WebServlet("/Brad10")
public class Brad10 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String key1 = (String)request.getAttribute("key1");
		String key2 = (String)request.getAttribute("key2");
		
		PrintWriter out = response.getWriter();
		out.println("I am Brad10: x = " + x + "<br />");
		out.println("I am Brad10: y = " + y + "<br />");
		out.println(key1 + "<br />");
		out.println(key2 + "<br />");
	}

}
