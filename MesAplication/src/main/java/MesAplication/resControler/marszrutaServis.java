package MesAplication.resControler;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@ResponseBody
public class marszrutaServis {

	
	@Autowired
	crudControler Crud;
	

	@GetMapping("/findall")	
	public List<marszruta> list(){
		
		return Crud.findAll();
	}
	
	@GetMapping("/showrecords")	
	public ModelAndView showall(){
		ModelAndView mav = new ModelAndView();
		List<marszruta> nowaLista = Crud.findAll();
		mav.addObject("nowaLista",nowaLista);
		mav.setViewName("all");
		return mav;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public void save(@RequestBody marszruta Marszruta) {
	
		Crud.save(Marszruta);
		
	
		
	}
	
}