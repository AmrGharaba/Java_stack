import java.util.ArrayList;

public class CafeUtil {

    public int getStreakGoal() {
        int sum = 0;
        for (int i = 0; i <= 10; i++) {
            sum += i;

        }
        System.out.println(sum);
        return sum;
    }
    public double getOrderTotal(double[] prices){
        double sum = 0;
        for(int i = 0 ; i < prices.length; i++){
            sum+= prices[i];
        }
        return sum;

    }

    public void displayMenu(ArrayList<String> menuItems){
        // for(int i = 0 ; i < menuItems.size() ; i++){
        //     System.out.println(i+" "+menuItems.get(i));
        // }
        for(String item : menuItems){
            System.out.println(menuItems.indexOf(item)+" "+item);
        }

    }

    public void addCustomer(ArrayList<String> customers){
        System.out.println("Please enter your name:");
        String username = System.console().readLine();
        
        System.out.println("Hello, [username here]!");
        System.out.println( "There are "+ (customers.size())+" people in front of you");
        customers.add(username);
        for(String customer : customers){
            System.out.println(customer);
        }

    }

}