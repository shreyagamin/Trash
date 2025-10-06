package tryCatch;

public class tryCatch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
int d,a ;
try {
	d=6;
	a=42/d;
	System.out.println("This will not be printed");
}catch(ArithmeticException e) {
	System.out.println("Division by zero");
}
System.out.println("After catch statement");
	}

}
