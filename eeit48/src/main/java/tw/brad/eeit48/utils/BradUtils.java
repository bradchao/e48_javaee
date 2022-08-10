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
		return "";
	}
	
}
