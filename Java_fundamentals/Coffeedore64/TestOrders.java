import java.util.ArrayList;

public class TestOrders {
	public static void main(String[] args) {
		// Creating two objects by calling the Order() constructor without args
		CoffeeKiosk kiosk = new CoffeeKiosk();

		kiosk.addMenuItem("mocha", 12);
		kiosk.addMenuItem("latte", 13);
		kiosk.addMenuItem("drip coffee", 14);
		kiosk.addMenuItem("cappuccino", 13.2);
		kiosk.newOrder();
        

	}
}