public class CafeJava {
    public static void main(String[] args) {
        // APP VARIABLES
        // Lines of text that will appear in the app.
        String generalGreeting = "Welcome to Cafe Java, ";
        String pendingMessage = ", your order will be ready shortly";
        String readyMessage = ", your order is ready";
        String displayTotalMessage = "Your total is $";

        // Menu variables (add yours below)
        double mochaPrice = 3.5;
        double dripCoffeePrice = 3.2;
        double lattePrice = 3.5;
        double cappuccinoPrice = 4.1;

        // Customer name variables (add yours below)
        String customer1 = "Cindhuri";
        String customer2 = "Sam";
        String customer3 = "Jimmy";
        String customer4 = "Noah";

        // Order completions (add yours below)
        boolean isReadyOrder1 = false;
        boolean isReadyOrder2 = false;
        boolean isReadyOrder3 = true;
        boolean isReadyOrder4 = true;

        // APP INTERACTION SIMULATION (Add your code for the challenges below)
        // Example:
        System.out.println(generalGreeting + customer1); // Displays "Welcome to Cafe Java, Cindhuri"
        // ** Your customer interaction print statements will go here ** //
        System.out.println(customer1 + " ordered a coffee for " + dripCoffeePrice + " $, your order is "
                + (isReadyOrder1 ? "ready" : "not ready"));
        System.out.println(customer4 + " ordered a cappuccino for " + cappuccinoPrice + " $, your order is "
                + (isReadyOrder1 ? "ready" : "not ready"));
        System.out.println(customer2 + " ordered 2 lattes for " + 2 * lattePrice + " $, your order is "
                + (isReadyOrder2 ? "ready" : "not ready"));
        System.out.println(customer3 + " ordered a latte ,and payed " + dripCoffeePrice
                + " $, remaining amount to pay is " + (lattePrice - dripCoffeePrice) + " $");
    }
}
