package MesAplication;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;

@ComponentScan
@SpringBootApplication
public class MesAplicationApplication {

	
	
	public static void main(String[] args) {
		SpringApplication.run(MesAplicationApplication.class, args);
	}

	@Bean
	public JpaVendorAdapter jpaVendorAdapter(){
	    HibernateJpaVendorAdapter jpaVendorAdapter = new HibernateJpaVendorAdapter();
	    jpaVendorAdapter.setGenerateDdl(true);
	    jpaVendorAdapter.setShowSql(true);

	    return jpaVendorAdapter;
	}
	
   
	}

