package MesAplication.resControler;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class maszyny {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	long id;	
	String maszyna;
	String obszar;

	public long getId() {
		return id;
	}




	public void setId(long id) {
		this.id = id;
	}

	
	public String getMaszyna() {
		return maszyna;
	}
	public void setMaszyna(String maszyna) {
		this.maszyna = maszyna;
	}
	public String getObszar() {
		return obszar;
	}
	public void setObszar(String obszar) {
		this.obszar = obszar;
	}
	



public maszyny() {
	
}

public maszyny(String maszyna,String obszar) {
	this.maszyna = maszyna;
	this.obszar = obszar;
}

	

}
