package MesAplication.resControler;

import org.springframework.data.jpa.repository.JpaRepository;

import MesAplication.resControler.entities.maszyny;

public interface crudControlerDlaMaszyn extends JpaRepository<maszyny, Long>{

}
