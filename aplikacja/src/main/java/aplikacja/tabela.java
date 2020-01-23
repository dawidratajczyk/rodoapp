package aplikacja;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class tabela {
	
	@Autowired
	public dbControler db;
	
	@GetMapping("/fetch")
	public ModelAndView showDb (ModelAndView model) {
		List<maszyny> ListaDb = db.list();
		
		model.addObject("ListaDb", ListaDb);
		model.setViewName("show");
		
		return model;
		
		
		
		
		
			
		
		
		
	}
	
	

}
