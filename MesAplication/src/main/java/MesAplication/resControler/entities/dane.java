package MesAplication.resControler.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class dane {
	


public void setNorma(double norma) {
		this.norma = norma;
	}

@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
Long id;
String material;
String Operacja;
String wartoscstandardowa2;

@Transient
double norma = 0;




public Long getId() {
	return id;
}





public void setId(Long id) {
	this.id = id;
}





public double getNorma() {
	return norma;
}





public String getWartoscstandardowa2() {
	return wartoscstandardowa2;
}


public void setWartoscstandardowa2(String wartoscstandardowa2) {
	this.wartoscstandardowa2 = wartoscstandardowa2;
}



public String getMaterial() {
	return material;
}
public void setMaterial(String materiał) {
	this.material = materiał;
}
public String getOperacja() {
	return Operacja;
}
public void setOperacja(String Operacja) {
	this.Operacja = Operacja;
}

public interface materialOnly{
	String getMaterial();
}





}
