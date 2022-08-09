package tw.brad.eeit48;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad16")
public class Brad16 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String source = "C:\\Users\\USER\\git\\repository5\\eeit48\\src\\main\\webapp\\upload\\10.0.100.101.jpg";
		BufferedImage bimg = ImageIO.read(new File(source));
		
		Font font = new Font(null, Font.BOLD, 72);
		
		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(30));
		Font font2 = font.deriveFont(tran);
		
		
		Graphics2D g2d = bimg.createGraphics();
		g2d.setColor(Color.BLUE);
		g2d.setFont(font2);
		g2d.drawString("Hello 資策會", 40, 100);
		
//		response.setContentType("image/jpeg");
//		OutputStream out = response.getOutputStream();
//		ImageIO.write(bimg, "jpeg", out);
//		response.flushBuffer();
		
		FileOutputStream fout = new FileOutputStream("C:\\Users\\USER\\git\\repository5\\eeit48\\src\\main\\webapp\\upload\\brad2.jpg");
		ImageIO.write(bimg, "jpeg", fout);
		fout.flush();
		fout.close();
	}

}
