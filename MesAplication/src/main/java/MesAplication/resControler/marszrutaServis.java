package MesAplication.resControler;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class marszrutaServis {

	
	@Autowired
	crudControler Crud;
	
	@RequestMapping()
	public List<marszruta> list(){
		
		return Crud.findAll();
	}
	
	
}
