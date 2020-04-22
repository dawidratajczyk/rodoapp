package MesAplication.resControler;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import MesAplication.resControler.entities.dane;

public interface crudControlerDlaDanych extends JpaRepository<dane,Long> {
	
	List<dane> findByMaterial(String material);
	
	
	List<dane> findByMaterialLike(String material);
	

}
