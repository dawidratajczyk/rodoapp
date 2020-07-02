package pl.mmstomatologia.classes.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class rodo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String pacjent;
	String firma;
	String uwaga;
	String podpis;
	
	
	public String getPodpis() {
		return podpis;
	}
	public void setPodpis(String podpis) {
		this.podpis = podpis;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPacjent() {
		return pacjent;
	}
	public void setPacjent(String pacjent) {
		this.pacjent = pacjent;
	}
	public String getFirma() {
		return firma;
	}
	public void setFirma(String firma) {
		this.firma = firma;
	}
	public String getUwaga() {
		return uwaga;
	}
	public void setUwaga(String uwaga) {
		this.uwaga = uwaga;
	}

	
	


}
