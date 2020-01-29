package MesAplication.resControler;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class marszrutaServis {

	
	@Autowired
	crudControler Crud;
	
	@GetMapping("/findall")
	@ResponseBody
	public List<marszruta> list(){
		
		return Crud.findAll();
	}
	
	
}
