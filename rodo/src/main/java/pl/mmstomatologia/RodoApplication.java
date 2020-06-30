package pl.mmstomatologia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan
@SpringBootApplication
public class RodoApplication {

	public static void main(String[] args) {
		SpringApplication.run(RodoApplication.class, args);
	}

}
