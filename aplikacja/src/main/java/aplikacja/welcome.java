package aplikacja;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class welcome {
public externalCars externalCars;
public String Ecar;

@Autowired
public welcome(externalCars externalCars) {

this.Ecar = externalCars.getCar() + " " +  externalCars.getColor();
}

@GetMapping(value = "/welcome")
public ModelAndView showList () {
	List<String> list = getList();
	
	//return back to index.jsp
			ModelAndView model = new ModelAndView("welcome");
			model.addObject("lists", list);

			return model;
	
}




public List<String> getList(){
	List<String> list = new ArrayList<String>();
	list.add("BMW");
	list.add("seria 1");
	list.add("118d");
	list.add("150km");
	list.add("kolor - biel alpejska");
	list.add("cena - 55 tys");
	list.add(Ecar);
	
	System.out.println(list);
	return list;
}




}
