import java.util.ArrayList;

public class CoffeeKiosk {

    private ArrayList<Item> menu;
    private ArrayList<Order> orders;

    public CoffeeKiosk() {
        this.menu = new ArrayList<Item>();
        this.orders = new ArrayList<Order>();
    }

    public void addMenuItem(String name, double price) {

        Item newItem = new Item(name, price);
        newItem.setName(name);
        menu.add(newItem);
        newItem.setIndex(menu.indexOf(newItem));

    }

    public String displayMenu() {
        String display = "";
        for (int i = 0; i < menu.size(); i++) {
            display += i + " " + menu.get(i).getName() + "--" + menu.get(i).getPrice() + "\n";
        }
        System.out.println(display);
        return display;
    }

    public void newOrder() {

        // Shows the user a message prompt and then sets their input to a variable, name
        System.out.println("Please enter customer name for new order:");
        String name = System.console().readLine();

        // Your code:
        // Create a new order with the given input string

        Order newOrder = new Order(name);
        displayMenu();

        // Show the user the menu, so they can choose items to add.

        // Prompts the user to enter an item number
        System.out.println("Please enter a menu item index or q to quit:");
        String itemNumber = System.console().readLine();

        // Write a while loop to collect all user's order items
        while (!itemNumber.equals("q")) {
            Item item = menu.get(Integer.parseInt(itemNumber));
            displayMenu();
            System.out.println("New item added : " + item.getName() + " to your order");
            // Get the item object from the menu, and add the item to the order
            newOrder.addItem(item);
            // Ask them to enter a new item index or q again, and take their input
            System.out.println("select a number from the menu to add to your order , or enter q to finish");
            itemNumber = System.console().readLine();
        }
        // After you have collected their order, print the order details
        newOrder.display();
    }

}