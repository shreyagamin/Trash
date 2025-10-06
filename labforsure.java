package tryCatch;

public class labforsure {
public static int divideNum(int m,int n) throws ArithmeticException{
	int div=m/n;
	return div;
}
public static void main(String[] args) {
	labforsure obj=new labforsure();
	try {
		System.out.println(obj.divideNum(45,0));
	}
	catch(ArithmeticException e) {
		System.out.println("NUmber cannot be divide by 0");
	}
}
}
