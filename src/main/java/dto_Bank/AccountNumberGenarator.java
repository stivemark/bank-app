package dto_Bank;

import java.util.Random;

public class AccountNumberGenarator {
	
	public static long generateAccountNumber() {
        Random random = new Random();
        // Generate a 12-digit random number
        long accountNumber = 100000000000L + (long)(random.nextDouble() * 900000000000L);
        return accountNumber;
    }

}
