package MesAplication.resControler;

import org.springframework.data.jpa.repository.JpaRepository;

import MesAplication.resControler.entities.dane;

public interface crudControlerDlaDanych extends JpaRepository<dane,Long> {

}
