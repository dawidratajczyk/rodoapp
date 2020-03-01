package MesAplication.resControler;

import java.util.List;

import javax.xml.ws.RespectBinding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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





}
