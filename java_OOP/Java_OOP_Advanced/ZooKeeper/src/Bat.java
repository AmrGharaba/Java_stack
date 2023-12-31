
public class Bat extends Mammal{
	public Bat() {
		this.energyLevel = 300;
	}
	public void fly() {
		this.energyLevel-=50;
		System.out.println("the bat is airborne, current energy level is "+super.displayEnergy()+"\n");
		
	}
	public void eatHumans() {
		this.energyLevel+=25;
		System.out.println("the bat is satisfied, current energy level is "+super.displayEnergy()+"\n");
		
	}
	public void attackTown() {
		this.energyLevel-=100;
		System.out.println("the bat is attacking a town, current energy level is "+super.displayEnergy()+"\n");
		
		
	}
}
