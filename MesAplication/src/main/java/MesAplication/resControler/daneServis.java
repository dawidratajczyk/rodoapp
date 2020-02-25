package MesAplication.resControler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import MesAplication.resControler.entities.dane;

@Controller
public class daneServis {
@Autowired
crudControlerDlaDanych crud;


@GetMapping("/marszruta")
public ModelAndView showMarszruta() {
	List<dane> lista = crud.findAll();
	ModelAndView mv = new ModelAndView();
	mv.addObject("lista", lista);
	mv.setViewName("dane");
	return mv;

}


}
