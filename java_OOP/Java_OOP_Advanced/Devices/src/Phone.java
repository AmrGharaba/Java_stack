
class Phone extends Device {
	
		public void makeCall() {
		this.subBatteryLife(5);
		System.out.println("You just made a call,\n the current battery life is "+this.batteryStatus()+"%\n");
		
	}
	public void playGame() {
		this.subBatteryLife(20);
		System.out.println("You just played a game,\n the current battery life is "+this.batteryStatus()+"%\n");
		
	}
	public void charge() {
		this.addBatteryLife(50);
		System.out.println("You just charged your phone,\n the current battery life is "+this.batteryStatus()+"%\n");
	}
	

}
