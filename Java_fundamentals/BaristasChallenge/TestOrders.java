import java.util.ArrayList;

public class TestOrders {
    public static void main(String[] args) {

        Item item1 = new Item("mocha", 23);
        Item item2 = new Item("latte", 12);
        Item item3 = new Item("drip coffee", 13.6);
        Item item4 = new Item("cappuccino", 14);

        // Create 2 orders for unspecified guests. Do not specify a name.
        Order order1 = new Order();
        Order order2 = new Order();

        // Create 3 orders using the overloaded constructor to give each a name for the
        // order.
        Order order3 = new Order("john");
        Order order4 = new Order("jerry");
        Order order5 = new Order("peter");

        // Implement the addItem, getStatusMessage, getOrderTotal, and display methods
        // within the Order class.
        order1.addItem(item1);

        System.out.println(order1.getStatusMessage());
        order1.setReady(true);
        System.out.println(order1.getStatusMessage());

        // Add at least 2 items to each of the orders using the addItem method.
        order1.addItem(item3);

        order2.addItem(item4);
        order2.addItem(item2);

        order3.addItem(item1);
        order3.addItem(item2);
        order3.addItem(item3);
        order3.addItem(item4);

        System.out.println(order3.getOrderTotal());

        System.out.println(order1.display());
        System.out.println(order2.display());
        System.out.println(order3.display());
        System.out.println(order4.display());

    }
}
