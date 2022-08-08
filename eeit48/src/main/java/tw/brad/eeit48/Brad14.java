package tw.brad.eeit48;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.eeit48.utils.BradUtils;

@WebServlet("/Brad14")
public class Brad14 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String v = (String)request.getAttribute("view");
		int r = (Integer)request.getAttribute("result");
		String result;
		if (x != null && y!= null) {
			result = r + "";
		}else {
			x = y = result = "";
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String view = BradUtils.loadView(v);
		out.print(String.format(view, x, y, result));
		response.flushBuffer();
	}

}
