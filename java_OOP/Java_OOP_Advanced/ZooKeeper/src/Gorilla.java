
public class Gorilla extends Mammal {
		
	public void throwSomething() {
		this.energyLevel-=5;
		System.out.println("Gorilla has thrown something, current energy level is "+this.energyLevel+"\n");
		
	}
	public void eatBananas() {
		this.energyLevel+=10;
		System.out.println("Gorilla ate a banana, current energy level is "+this.energyLevel+"\n");
		
	}
	public void climb() {
		this.energyLevel-=10;
		System.out.println("Gorilla has climbed a tree, current energy level is "+this.energyLevel+"\n");
		
		
	}

}
