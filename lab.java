package tryCatch;
public class lab{
	static void checkAge(int age) {
		if(age<18) {
			throw new ArithmeticException("access denied -you must be at least 18 years old.");
		}
		else {
			System.out.println("Access granted -you are old enough!");
		}
	}
	public static void main(String[] args) {
		checkAge(9);
		try {
			checkAge(15);
		}
		catch(ArithmeticException e) {
			System.out.println("caught in main() method");
		}
	}
}

