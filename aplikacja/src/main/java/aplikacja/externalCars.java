package aplikacja;

import org.springframework.stereotype.Component;

@Component
public class externalCars {
	private String car = "Bmw 3";
	private String color = "black";
	

	
	public externalCars() {
		
	}
	
	public String getCar() {
		return car;
	}
	public void setCar(String car) {
		this.car = car;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	

	
	
}
