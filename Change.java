package se50.lesson1;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Change {

	public static void main(String[] args) {
		float userInput = getUserNumber();
		int coins = getNumbersOfCoins(userInput);
		System.out.println(coins);
		

	}

	public static float getUserNumber() {
		try {
			Scanner getNumber = new Scanner(System.in);
			System.out.println("Please enter the change you need to get:");
			System.out.println(">");
			float number = getNumber.nextFloat();
			if (number < 0) {	
				System.out.println("Can't calculate negative numbers, please try again."); 
				return getUserNumber();
			}
			return number;
		} catch (InputMismatchException e) {
			System.out.println("This is an invalid input, please try again.");
			return getUserNumber();
		}	
	}	
	
	public static int getNumbersOfCoins(float change) {
		int multiChange = (int) (change * 100);
		int totalNumberOfCoins = 0;
		int[] typesOfCoins = {25, 10, 5, 1};
		for (int coin : typesOfCoins) {
			if (multiChange % coin == 0) {
				return (multiChange / coin) + totalNumberOfCoins;
			} else {
				int currentNumberOfCoins = multiChange / coin;
				multiChange = multiChange - (currentNumberOfCoins * coin);
				totalNumberOfCoins = totalNumberOfCoins + currentNumberOfCoins;
			}
		}
		return totalNumberOfCoins;
	}
	
}
