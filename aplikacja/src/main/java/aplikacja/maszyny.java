package aplikacja;

public class maszyny {
private String Material;
private String Operacje;
private String Czas;

public maszyny() {
	
}

public maszyny(String Material, String Operacje, String Czas) {
	this.Material = Material;
	this.Operacje = Operacje;
	this.Czas = Czas;
	
}

public String getMaterial() {
	return Material;
}

public void setMaterial(String material) {
	Material = material;
}

public String getOperacje() {
	return Operacje;
}

public void setOperacje(String operacje) {
	Operacje = operacje;
}

public String getCzas() {
	return Czas;
}

public void setCzas(String czas) {
	Czas = czas;
}

}
