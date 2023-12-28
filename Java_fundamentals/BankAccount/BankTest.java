public class BankTest {
    public static void main(String[] args) {
        // Create 3 bank accounts
        BankAccount account1 = new BankAccount(200, 230.4);
        BankAccount account2 = new BankAccount(200);
        BankAccount account3 = new BankAccount();

        // Deposit Test
        // - deposit some money into each bank account's checking or savings account and
        // display the balance each time
        // account1.DepositCheckingBalance(30);
        System.out.println(account2.getTotalMoney());
        account2.DepositSavingBalance(55);
        account2.DepositSavingBalance(150.4);
        System.out.println(account2.getAccountNumber());

        // - each deposit should increase the amount of totalMoney

        // Withdrawal Test
        // - withdraw some money from each bank account's checking or savings account
        // and display the remaining balance
        // - each withdrawal should decrease the amount of totalMoney

        // Static Test (print the number of bank accounts and the totalMoney)

    }
}
