package tw.brad.eeit48;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brad11
 */
@WebServlet("/Brad11")
public class Brad11 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("Brad10");
		
		request.setAttribute("key1", "value1");
		request.setAttribute("key2", "value2");
		
		//-------------------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<h1>Brad Big Company</h1>");
		out.print("<hr />");
		out.print("Hello, World<br />");
		
		//dispatcher.include(request, response);
		dispatcher.forward(request, response);
		
		out.print("<hr />");
		out.print("Copyleft");
		
		response.flushBuffer();
	}

}
