package tw.brad.eeit48;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad19")
public class Brad19 extends HttpServlet {
	private Connection conn;
	
    public Brad19() {
    	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Properties prop = new Properties();
			prop.put("user", "root");
			prop.put("password", "root");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost/eeit48",prop);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String account = req.getParameter("account");
    	String passwd = req.getParameter("passwd");
    	if (isCheckOK(account, passwd)) {
    		
    	}else {
    		
    	}
    	super.service(req, resp);
    }
    
    private boolean isCheckOK(String account, String passwd) {
    	String sql = "SELECT * FROM member WHERE account = ?";
    	try {
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, account);
    		ResultSet rs = pstmt.executeQuery();
    		if (rs.next()) {
    			
    		}else {
    			return false;
    		}
    		
    	}catch (Exception e) {
    		return false;
		}
    	
    	
    	return true;
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


}
