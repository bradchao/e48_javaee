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

import tw.brad.eeit48.utils.BCrypt;

@WebServlet("/Brad19")
public class Brad19 extends HttpServlet {
	private Connection conn;
	private static final int CHECK_OK = 1;
	private static final int CHECK_EXCEPTION = 2;
	private static final int CHECK_ACCOUNT_ERROR = 3;
	private static final int CHECK_PASSWD_ERROR = 4;
	
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
    	int status = checkAccount(account, passwd);
    	switch(status) {
	    	case CHECK_OK:
	    		break;
	    	case CHECK_ACCOUNT_ERROR:
	    		break;
	    	case CHECK_PASSWD_ERROR:
	    		break;
	    	case CHECK_EXCEPTION:
	    		break;
    	}
    	super.service(req, resp);
    }
    
    private int checkAccount(String account, String passwd) {
    	String sql = "SELECT * FROM member WHERE account = ?";
    	try {
    		PreparedStatement pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, account);
    		ResultSet rs = pstmt.executeQuery();
    		if (rs.next()) {
    			String passwdEncrypt = rs.getString("passwd");
    			if (BCrypt.checkpw(passwd, passwdEncrypt)) {
    				return CHECK_OK;
    			}else {
    				return CHECK_PASSWD_ERROR;
    			}
    		}else {
    			return CHECK_ACCOUNT_ERROR;
    		}
    		
    	}catch (Exception e) {
    		return CHECK_EXCEPTION;
		}
    	
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


}
