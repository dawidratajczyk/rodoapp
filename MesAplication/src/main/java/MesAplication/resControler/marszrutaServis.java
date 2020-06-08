package MesAplication.resControler;



import java.io.Console;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import MesAplication.resControler.entities.marszruta;
import MesAplication.resControler.entities.maszyny;
import MesAplication.resControler.entities.produkcja;

@Controller
public class marszrutaServis {

	
	@Autowired
	crudControler Crud;
	
	
	@Autowired
	crudControlerDlaMaszyn crudMachine;
	
	@Autowired
	crudControlerDlaProdukcji crudProd;

	@GetMapping("/findall")	
	@ResponseBody
	public List<marszruta> list(){
		
		return Crud.findAll();
	}
	
	//@GetMapping("/show")	
	//public ModelAndView showall(){
	//	ModelAndView mav = new ModelAndView();
	//	List<produkcja> nowaLista = crudProd.findAll();
	//	mav.addObject("nowaLista",nowaLista);
	//	mav.setViewName("all");
	//	return mav;
	//}
	
	//werja ze stronicowaniem
	@GetMapping("/show")	
	public ModelAndView showall(@RequestParam(required = false,defaultValue = "0") int pages , @RequestParam(required = false,defaultValue = "5") int count){
		Pageable ShowPages = PageRequest.of(pages, count);		
		ModelAndView mav = new ModelAndView();
		
		List<produkcja> nowaLista = crudProd.findAll(ShowPages).getContent();
		
		
		//ta czesc liczy, ile nalezy wyświetlić stron
		int pgcount = crudProd.findAll(ShowPages).getTotalPages();
		List<Integer> pglist = new ArrayList<Integer>();
		
		if (pgcount > 6) {
			for (int i = (pgcount -2); i < (pgcount + 3) ;i++) {
					if (i >= 0 & i <= pgcount) {
						pglist.add(i);						
					}
			}
		} else {
			
			for (int i = 0; i < pgcount;i++) {
				pglist.add(i);
			}
		}
		
		
		
	
		
		
		mav.addObject("pglist",pglist);
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