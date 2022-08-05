package tw.brad.eeit48;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brad05
 */
@WebServlet("/Brad05")
public class Brad05 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		Enumeration<String> params = request.getParameterNames();
		while (params.hasMoreElements()) {
			String name = params.nextElement();
			System.out.println(name);
		}
	}

}






