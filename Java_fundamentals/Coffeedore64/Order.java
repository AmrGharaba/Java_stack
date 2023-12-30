import java.util.ArrayList;

public class Order {
    private String name;
    private double total;
    private boolean ready;
    private ArrayList<Item> items = new ArrayList<Item>();

    public Order(){
        this.name = "Guest";
        this.items = new ArrayList<Item>();
    }
    public Order(String name){
        this.name = name;
    }
    public String getName(){
        return this.name;
    }
    public void setName(String name){
        this.name = name;
    }
    public double getOrderTotal (){
        this.total = 0;
        for(Item item : this.items){
            this.total+= item.getPrice();
        }

        return this.total;
    }
    public boolean isReady(){
        return this.ready;
    }
    public void setReady(boolean status){
        this.ready = status;
    }

    public String getStatusMessage(){

        if(isReady()){
            return "Your order is ready. ";
        }
        else{
            return "Thank you for waiting. Your order will be ready soon.";
        }
    }
    public ArrayList<Item> getItems(){
        return this.items;
    }
    public void addItem(Item item){
        this.items.add(item);
    }
    public String display(){
        String message = "Customer name : "+this.name+"\n";

        for(Item item : this.items){
            message += item.getName()+" - "+ item.getPrice()+"\n";
        }
        message+="Total: "+getOrderTotal();
        System.out.println(message);
        return message;
    }

}
