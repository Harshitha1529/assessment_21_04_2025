package assess;

public class palindrome {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		  int palindromeNum = 121;
	        int originalNum = palindromeNum;
	        int reverseNum = 0;
	        System.out.println("\nChecking if " + palindromeNum + " is a palindrome:");
	        while (palindromeNum != 0) {
	            int digit = palindromeNum % 10;
	            reverseNum = reverseNum * 10 + digit;
	            palindromeNum /= 10;
	        }
	        if (originalNum == reverseNum) {
	            System.out.println("Palindrome");
	        } else {
	            System.out.println("Not Palindrome");
	        }
	}

}
