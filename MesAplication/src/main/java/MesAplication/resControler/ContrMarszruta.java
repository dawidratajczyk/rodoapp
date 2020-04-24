package MesAplication.resControler;

import java.util.Collection;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import MesAplication.resControler.entities.dane;
import MesAplication.resControler.entities.dane.materialOnly;
import MesAplication.resControler.entities.dane.wartoscstandardowa2Only;


@Controller
public class ContrMarszruta {
@Autowired
crudControlerDlaDanych crudData;

@CrossOrigin
@GetMapping("/addrecord")
public String addrec() {

	return "newDataEntry";
}

@CrossOrigin
@ResponseBody
@GetMapping("/findrecord")
public Collection<materialOnly> findedData(@RequestParam String mat){
	String material = "%"+mat+"%";
	System.out.println(mat);
	
	Collection<materialOnly> dane = crudData.findDistinctByMaterialLike(material);
	return dane;
	
}

@CrossOrigin
@ResponseBody
@GetMapping("/findoperation")
public List<dane> findoperation(@RequestParam String mat){
	String material = mat;
	System.out.println(mat);
	
	List<dane> dane = crudData.findByMaterial(material);
	return dane;
	
}


@CrossOrigin
@ResponseBody
@GetMapping("/findtime")
public Collection<wartoscstandardowa2Only> findtime(@RequestParam String mat, @RequestParam String op ){
	String material = mat;
	String operacja = op;

	
	Collection<wartoscstandardowa2Only> dane = crudData.findByMaterialAndOperacja(material,operacja);
	return dane;
	
}





@CrossOrigin
@GetMapping("/addrecordtest")
public ModelAndView addRecord() {
	ModelAndView mv = new ModelAndView();
	List<dane> listOfData;
	listOfData = crudData.findAll();
	
	
	mv.addObject("listDanych",listOfData);
	mv.setViewName("newDataEntry");
	return mv;
}

	
}
