package tw.brad.eeit48;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brad03
 */
@WebServlet("/Brad03")
public class Brad03 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		Enumeration<String> names = request.getHeaderNames();
		while( names.hasMoreElements()) {
			String name = names.nextElement();
			String value = request.getHeader(name);
			System.out.println(name +" : " +value);
		}
		
	}

}
