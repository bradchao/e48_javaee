package tw.brad.eeit48.model;

public class Brad13 {
	private int x, y;
	
	public Brad13(String x, String y) {
		try {
			this.x = Integer.parseInt(x);
			this.y = Integer.parseInt(y);
		}catch(Exception e) {
			this.x = 0;
			this.y = 0;
		}
	}
	
	public int add() {
		return x + y;
	}
	
	
}
