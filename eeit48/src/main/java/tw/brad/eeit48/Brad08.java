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
@MultipartConfig(
		location = "C:\\Users\\USER\\git\\repository5\\eeit48\\src\\main\\webapp\\upload"
		)
public class Brad08 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
//		Collection<Part> parts = request.getParts();
//		for (Part part : parts) {
//			String name = part.getName();
//			String type =  part.getContentType();
//			System.out.println(type + ":" + name);
//		}
		
		String ip = request.getRemoteAddr();
		
//		Part part = request.getPart("upload");
//		part.write(ip + ".jpg");
		
		Collection<Part> parts = request.getParts();
		for (Part part : parts) {
			String name = part.getName();
			if (name.equals("upload")) {
				System.out.println("OK");
				//part.get
			}
		}
		
		
		
	}

}
