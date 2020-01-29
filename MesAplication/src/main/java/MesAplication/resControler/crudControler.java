package MesAplication.resControler;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface crudControler extends JpaRepository<marszruta, Long>{

}
