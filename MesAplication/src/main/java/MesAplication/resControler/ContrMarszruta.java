package MesAplication.resControler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import MesAplication.resControler.entities.dane;


@Controller
public class ContrMarszruta {
@Autowired
crudControlerDlaDanych crudData;




@GetMapping("/addRecord")
public ModelAndView addRecord() {
	ModelAndView mv = new ModelAndView();
	List<dane> listOfData;
	listOfData = crudData.findAll();
	
	
	mv.addObject("listDanych",listOfData);
	mv.setViewName("newDataEntry");
	return mv;
}

	
}
