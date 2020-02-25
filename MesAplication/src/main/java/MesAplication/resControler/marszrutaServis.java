package MesAplication.resControler;



import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import MesAplication.resControler.entities.marszruta;
import MesAplication.resControler.entities.maszyny;

@Controller
public class marszrutaServis {

	
	@Autowired
	crudControler Crud;
	
	
	@Autowired
	crudControlerDlaMaszyn crudMachine;
	
	

	@GetMapping("/findall")	
	@ResponseBody
	public List<marszruta> list(){
		
		return Crud.findAll();
	}
	
	@GetMapping("/show")	
	public ModelAndView showall(){
		ModelAndView mav = new ModelAndView();
		List<marszruta> nowaLista = Crud.findAll();
		mav.addObject("nowaLista",nowaLista);
		mav.setViewName("all");
		return mav;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveKod(@ModelAttribute("marszruta") marszruta marszruta) {
	    Crud.save(marszruta);
	    return "redirect:/show";
	}
	
	
	@RequestMapping("/dodaj")
	public String newMarszrutaForm(Map<String, Object> model) {
	  marszruta marszruta = new marszruta();

	  List<maszyny> listaMaszyn = crudMachine.findAll();		
	  
	  model.put("marszruta", marszruta);
	  model.put("listofMachine", listaMaszyn);
	    return "new";
	   }

	
	@RequestMapping("/test")
	public String Test() {
	

	    return "test";
	   }

	
	
}