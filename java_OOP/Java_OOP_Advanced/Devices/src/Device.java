
public class Device {
	private int battery = 100;
	
	public int batteryStatus() {
		return this.battery;
	}
	public void subBatteryLife(int battery) {
		if(this.battery - battery > 0) {
			this.battery -= battery;
		}
		else {
			this.battery = 0;
		}
		
	}
	public void addBatteryLife(int battery) {
		if(this.battery + battery < 100 ) {
			this.battery+=battery;	
		}
		else {
			this.battery = 100;
		}
		
	}

}
