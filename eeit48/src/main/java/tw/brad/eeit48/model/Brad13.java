package tw.brad.eeit48.model;

public class Brad13 {
	private int x, y, op;
	
	public Brad13(String x, String y, String op) {
		try {
			this.x = Integer.parseInt(x);
			this.y = Integer.parseInt(y);
			this.op = Integer.parseInt(op);
		}catch(Exception e) {
			this.x = 0;
			this.y = 0;
			this.op = 0;
		}
	}
	
	public int add() {
		return x + y;
	}
	
	public double operator() {
		double ret;
		switch (op) {
			case 1: ret = x + y; break;
			case 2: ret = x - y; break;
			case 3: ret = x * y; break;
			case 4: ret = x / y*1.0; break;
			default: ret = 0;
		}
		return ret;
	}
	
}
