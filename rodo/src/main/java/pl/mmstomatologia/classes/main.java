package pl.mmstomatologia.classes;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import pl.mmstomatologia.classes.entities.rodo;
import pl.mmstomatologia.classes.repository.crudRodo;

@Controller
public class main {
	@Autowired
	crudRodo crud;
	
	@RequestMapping("/")
	public RedirectView index() {
		

		
		return new RedirectView("lista");
	}
	
	@GetMapping("/main")
	public String welcomeView() {
		
		
		return("main");
	}
	
	
	@GetMapping("/sign")
	public String signtTest(Map<String,Object> model) {
		rodo rodo = new rodo();
		model.put("rodo",rodo);
		
		return("sign");
	}
	
	
	@RequestMapping(value="/saveRodo", method = RequestMethod.POST)
	public String saveRodo(@ModelAttribute rodo rodo) {
		crud.save(rodo);
		
		return "redirect:/lista";
		
	}
	
	@GetMapping("/rodo")
	public ModelAndView showRodo(@RequestParam Long id) {
		ModelAndView mv = new ModelAndView();
		rodo rodo = new rodo();
		rodo = crud.getOne(id);
		mv.addObject("rodo", rodo);
		mv.setViewName("view");
		
		
		return mv;
				
	}
	
	
	@GetMapping("/lista")
	public ModelAndView showAll() {
		ModelAndView mv = new ModelAndView();
		List<rodo> lista = crud.findAll();
		mv.addObject("lista", lista);
		mv.setViewName("lista");
		
		return mv;
	}
	


}
