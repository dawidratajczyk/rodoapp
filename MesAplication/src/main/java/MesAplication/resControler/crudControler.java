package MesAplication.resControler;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import MesAplication.resControler.entities.marszruta;

@Repository
@EnableJpaRepositories
public interface crudControler extends JpaRepository<marszruta, Long>{

}
