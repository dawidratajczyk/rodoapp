package MesAplication.resControler;



import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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
	

	//werja ze stronicowaniem
	@GetMapping("/show")	
	public ModelAndView showall(@RequestParam(required = false,defaultValue = "1") int pages , @RequestParam(required = false,defaultValue = "5") int count){
		ModelAndView mav = new ModelAndView();
		
		//Zmienne i ustawienia do stronicowania
		Pageable ShowPages = PageRequest.of((pages-1), count,Sort.by("Id").descending());
		List<produkcja> nowaLista = crudProd.findAll(ShowPages).getContent();
		
		
		//ta czesc liczy, ile nalezy wyświetlić stron
		int pgcount = crudProd.findAll(ShowPages).getTotalPages();
		int pglast = pgcount;
		int pgcurrent = pages;
		List<Integer> pglist = new ArrayList<Integer>();
		
		
		
		//obliczanie ilosci widocznych stron
		if (pgcount >= 10) { 
			for (int i = (pages -2); i < (pages + 1) ;i++) {
					if (i >= 1 && i < (pgcount-1)) { //iteracja celowo pomija pierwsza oraz ostatnia strone, aby byly zawsze wyswietlane jako warunki brzegowe
					
						pglist.add(i+1);						
					} 
					
			}
		} else {
			
			for (int i = 1; i < pgcount-1;i++) {
				pglist.add(i+1);
			}
		}
		
		
		
	
		
		mav.addObject("pglast",pglast);
		mav.addObject("pglist",pglist);
		mav.addObject("nowaLista",nowaLista);
		mav.addObject("pgcount",pgcount);
		mav.addObject("pgcurrent",pgcurrent);
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

	

	
	
}