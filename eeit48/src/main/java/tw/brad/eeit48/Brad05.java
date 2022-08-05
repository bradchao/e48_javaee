package tw.brad.eeit48;

import java.io.IOException;
import java.io.PrintWriter;
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
		
//		Enumeration<String> params = request.getParameterNames();
//		while (params.hasMoreElements()) {
//			String name = params.nextElement();
//			String value = request.getParameter(name);
//			System.out.println(name + ":" + value);
//		}
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String z = request.getParameter("z");	// null
		
		if (z == null) {
			System.out.println("1");
		}else if ( z.equals("null")) {
			System.out.println("2");
		}else {
			System.out.println("3");
		}
		
		System.out.println(x +":" + y + ":" + z);
		
		int intX = Integer.parseInt(x);
		int intY = Integer.parseInt(y);
		int result = intX + intY;
		
		//----------------------------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.printf("%d + %d = %d",intX, intY, result);
		
		
		
		
	}

}






