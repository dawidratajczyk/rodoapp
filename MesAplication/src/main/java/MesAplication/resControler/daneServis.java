package MesAplication.resControler;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import MesAplication.resControler.entities.dane;

@Controller
public class daneServis {
@Autowired
crudControlerDlaDanych crud;


@GetMapping("/marszruta")
public ModelAndView showMarszruta() {
	List<dane> lista = crud.findAll();
	lista.forEach(dane->{
	String czas = dane.getWartoscstandardowa2();
	czas = czas.replace(',','.');
	dane.setNorma(60/Double.parseDouble(czas));


	});
	
	
	ModelAndView mv = new ModelAndView();
	mv.addObject("lista", lista);
	mv.setViewName("dane");
	return mv;

}
@ResponseBody
@GetMapping("/test")
public List<dane>  marszruta(){
	List<dane> lista = crud.findAll();
	lista.forEach(dane->{
	String czas = dane.getWartoscstandardowa2();
	czas = czas.replace(',','.');
	dane.setNorma(60/Double.parseDouble(czas));
	
	
	//double czasParsowany = Double.parseDouble(czas);
	//dane.setNorma(60 / czasParsowany);
	
	});
	
	return lista;
	
}


@ResponseBody
@RequestMapping(value="/znajdz/{id}")
public Optional<dane> FindOneRow(@PathVariable long id) {
		Optional<dane> dane = crud.findById(id);
		
	

	return dane;
}

@ResponseBody
@GetMapping("/testparam")
public String testparam(@RequestParam String dane) {
	
	
	return "Przekazano dane: " + dane;
	
}




@ResponseBody
@PostMapping("/dodajKod")
public String addKod(@RequestBody dane dane) {
	
	crud.save(dane);
	return "Kod dodany";
}




}
