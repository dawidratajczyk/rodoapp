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
	
	String rodoContext = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";
	
	@RequestMapping("/")
	public RedirectView index() {
		

		
		return new RedirectView("sign");
	}
	
	@GetMapping("/main")
	public String welcomeView() {
		
		
		return("main");
	}
	
	
	@GetMapping("/sign")
	public String signtTest(Map<String,Object> model) {
		rodo rodo = new rodo();
		model.put("rodo",rodo);
		model.put("context", rodoContext);
		
		return("sign");
	}
	
	
	@RequestMapping(value="/saveRodo", method = RequestMethod.POST)
	public String saveRodo(@ModelAttribute rodo rodo) {
		crud.save(rodo);
		
		return "redirect:/list";
		
	}
	
	
	@GetMapping("/delete")
	public String delRodo(Long id) {
		crud.deleteById(id);	
		
		return "redirect:/list";
	}
	
	
	@GetMapping("/rodo")
	public ModelAndView showRodo(@RequestParam Long id) {
		ModelAndView mv = new ModelAndView();
		rodo rodo = new rodo();
		rodo = crud.getOne(id);
		mv.addObject("rodo", rodo);
		mv.addObject("context", rodoContext);
		mv.setViewName("view");
		
		
		return mv;
				
	}
	
	
	@GetMapping("/list")
	public ModelAndView showAll() {
		ModelAndView mv = new ModelAndView();
		List<rodo> lista = crud.findAll();
		mv.addObject("lista", lista);
		mv.setViewName("list");
		
		return mv;
	}
	


}
