package tw.brad.eeit48;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.eeit48.model.Brad13;

@WebServlet("/Brad12")
public class Brad12 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		// 1. 接收參數
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");
		
		// 2. 演算法 Model
		Brad13 model = new Brad13(x, y, op);
		double result =  model.operator();
		System.out.println(result);
		request.setAttribute("result", result);
		request.setAttribute("view", "view2");
		
		// 3. 呈現 View
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("Brad14");
		dispatcher.forward(request, response);
		
		
	}

}
