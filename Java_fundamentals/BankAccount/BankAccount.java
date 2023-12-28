public class BankAccount {
    // MEMBER VARIABLES
    private double checkingBalance;
    private double savingsBalance;
    private int accountNumber;

    private static int accounts;
    private static double totalMoney; // refers to the sum of all bank account checking and savings balances

    // CONSTRUCTOR
    // Be sure to increment the number of accounts
    public BankAccount() {
        this.accounts += 1;
        this.checkingBalance = 0;
        this.savingsBalance = 0;
        totalMoney += this.checkingBalance + this.savingsBalance;
        accountNumber = accounts;
    }

    public BankAccount(double checkingBalance) {
        this.accounts += 1;
        this.checkingBalance = checkingBalance;
        this.savingsBalance = 0;
        totalMoney += this.checkingBalance + this.savingsBalance;
        accountNumber = accounts;
    }

    public BankAccount(double checkingBalance, double savingsBalance) {
        this.accounts += 1;
        this.checkingBalance = checkingBalance;
        this.savingsBalance = savingsBalance;
        totalMoney += this.checkingBalance + this.savingsBalance;
        accountNumber = accounts;
    }

    // GETTERS
    // for checking, savings, accounts, and totalMoney
    public double getCheckingBalance() {
        return this.checkingBalance;
    }

    public double getSavingBalance() {
        return this.savingsBalance;
    }

    public int getAccounts() {
        return accounts;
    }

    public static double getTotalMoney() {

        return totalMoney;
    }

    // METHODS
    // deposit
    // - users should be able to deposit money into their checking or savings
    // account

    public void DepositCheckingBalance(double amount) {
        this.checkingBalance += amount;
        totalMoney += amount;
    }

    public void DepositSavingBalance(double amount) {
        this.savingsBalance += amount;
        totalMoney += amount;
    }

    public int getAccountNumber() {
        return accountNumber;
    }

    // withdraw
    // - users should be able to withdraw money from their checking or savings
    // account
    // - do not allow them to withdraw money if there are insufficient funds
    // - all deposits and withdrawals should affect totalMoney
    public void WithdrowCheckingBalance(double amount) {
        if (this.checkingBalance > amount) {
            this.checkingBalance -= amount;
            totalMoney -= amount;
        }
    }

    public void WithdrowSavingBalance(double amount) {
        if (this.savingsBalance > amount) {
            this.savingsBalance -= amount;
            totalMoney -= amount;
        }
    }

    // getBalance
    // - display total balance for checking and savings of a particular bank account
    public String DesplayBalance() {
        String message = "Hello, your Total checking Balance : " + this.checkingBalance + "\n" + "saving balance : "
                + this.savingsBalance;
        return message;

    }

}
