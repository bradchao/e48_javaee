package tw.brad.eeit48;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Brad08
 */
@WebServlet("/Brad08")
@MultipartConfig
public class Brad08 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		Collection<Part> parts = request.getParts();
		for (Part part : parts) {
			String name = part.getName();
			String type =  part.getContentType();
			System.out.println(type + ":" + name);
		}
		
	}

}
