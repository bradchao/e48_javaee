package tw.brad.eeit48;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;

@WebServlet("/Brad15")
public class Brad15 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		//------------------
		response.setContentType("image/jpeg");
		BufferedImage bimg = new BufferedImage(400, 20, BufferedImage.TYPE_INT_RGB);
		Graphics2D g2d = bimg.createGraphics();
		
		
		
		OutputStream out = response.getOutputStream();
		ImageIO.write(bimg, "jpeg", out);
		
		response.flushBuffer();
	}

}
