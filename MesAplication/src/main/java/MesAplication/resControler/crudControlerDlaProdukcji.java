package MesAplication.resControler;

import org.springframework.data.jpa.repository.JpaRepository;

import MesAplication.resControler.entities.produkcja;

public interface crudControlerDlaProdukcji extends JpaRepository<produkcja,Long> {
	


}
