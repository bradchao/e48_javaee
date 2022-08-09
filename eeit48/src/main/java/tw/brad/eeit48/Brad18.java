package tw.brad.eeit48;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad18")
public class Brad18 extends HttpServlet {
    public Brad18() {
    	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("OK");
		} catch (ClassNotFoundException e) {
			System.out.println(e.toString());
		}
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	showDatabase();
    	super.service(req, resp);
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//showDatabase();
	}

	private void showDatabase() {
		Properties prop = new Properties();
		prop.put("user", "root");
		prop.put("password", "root");
		try{
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/", prop);
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("show databases");
			while (rs.next()) {
				String dbName = rs.getString(1);
				System.out.println(dbName);
			}
			System.out.println("OK");
		}catch(Exception e) {
			System.out.println(e.toString());
		}
	}
}
