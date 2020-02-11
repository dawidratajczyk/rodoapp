package MesAplication.resControler;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



/**
 * @author dratajczyk
 *
 */
/**
 * @author dratajczyk
 *
 */
@Entity
public class marszruta  {
	
@Id
@GeneratedValue(strategy = GenerationType.SEQUENCE)
//@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "users_seq_gen")
//@SequenceGenerator(name = "users_seq_gen", sequenceName = "users_id_seq")
long id;
String maszyna;
String operacja;
String czas;
String material;
String opis;







public long getId() {
	return id;
}




public void setId(long id) {
	this.id = id;
}




public marszruta() {
	
}




public marszruta(String maszyna, String operacja, String czas, String material, String opis) {
	this.maszyna = maszyna;
	this.operacja = operacja;
	this.czas = czas;
	this.material = material;
	this.opis = opis;

}

public String getMaszyna() {
	return maszyna;
}
public void setMaszyna(String maszyna) {
	this.maszyna = maszyna;
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
