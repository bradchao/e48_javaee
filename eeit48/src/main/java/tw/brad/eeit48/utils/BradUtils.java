package tw.brad.eeit48.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class BradUtils {
	public static String loadView(String view) {
		// 
		String viewFile = 
			String.format("C:\\Users\\USER\\git\\repository5\\eeit48\\src\\main\\webapp\\views\\%s.html", 
					view);
		File source = new File(viewFile);
		StringBuffer sb = new StringBuffer();
		try(
			FileReader fin = new FileReader(source);
			BufferedReader reader = new BufferedReader(fin)	){
			
			String line;
			while ( (line = reader.readLine()) != null) {
				sb.append(line);
			}
			
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
		
		return sb.toString();
	}
	
	public static String sayYa(String who) {
		return "Ya, " + who;
	}
	
	public static String plus(String x, String y) {
		int r;
		try {
			int intX = Integer.parseInt(x);
			int intY = Integer.parseInt(y);
			r = intX + intY;
			return r + "";
		}catch(Exception e) {
			return "";
		}
	}
	public static String calc(String x, String y, String op) {
		int r, m;
		try {
			int intX = Integer.parseInt(x);
			int intY = Integer.parseInt(y);
			switch(op) {
				case "1": r = intX + intY; return r + "";
				case "2": r = intX - intY; return r + "";
				case "3": r = intX * intY; return r + "";
				case "4": r = intX / intY; m = intX % intY; return r + "..." + m;
				default: return "";
			}
		}catch(Exception e) {
			return "";
		}
	}
	
	public static int createScore() {
		return (int)(Math.random()*101);
	}
	
	public static String encPasswd(String passwd) {
		String hashPasswd = BCrypt.hashpw(passwd, BCrypt.gensalt());
		return hashPasswd;
	}
	
}
