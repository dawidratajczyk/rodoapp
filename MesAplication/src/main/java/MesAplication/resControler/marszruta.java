package MesAplication.resControler;



import javax.persistence.Entity;



@Entity

public class marszruta  {
	

String maszyna;
String operacja;
String czas;
String material;
String opis;
public marszruta() {
	
}




public marszruta(String maszyna, String operacja, String czas, String material, String opis) {
	this.maszyna = maszyna;
	this.operacja = operacja;
	this.czas = czas;
	this.material = material;
	this.opis = opis;
}





public String getMaterial() {
	return material;
}
public void setMaterial(String material) {
	this.material = material;
}
public String getOpis() {
	return opis;
}
public void setOpis(String opis) {
	this.opis = opis;
}




public String getMaszyna() {
	return maszyna;
}
public void setMaszyna(String maszyna) {
	this.maszyna = maszyna;
}
public String getOperacja() {
	return operacja;
}
public void setOperacja(String operacja) {
	this.operacja = operacja;
}
public String getCzas() {
	return czas;
}
public void setCzas(String czas) {
	this.czas = czas;
}


}
