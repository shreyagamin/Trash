package tryCatch;

public class multiple {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			int a=args.length;
			System.out.println("a= "+a);
			int b=42/2;
			int c[]= {1};
			c[42]=99;
		}catch(ArithmeticException e) {
			System.out.println("divide by 0:"+e);
		}
		catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("Array index oob :"+e);
		}
		System.out.println("After try/catch blocks.");

}
}