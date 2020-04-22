package MesAplication.resControler;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import MesAplication.resControler.entities.dane;


@Controller
public class ContrMarszruta {
@Autowired
crudControlerDlaDanych crudData;


@GetMapping("/addrecord")
public String addrec() {

	return "newDataEntry";
}

@ResponseBody
@GetMapping("/findrecord")
public List<dane> findedData(@RequestParam String mat){
	String material = "%"+mat+"%";
	System.out.println(mat);
	
	List<dane> dane = crudData.findByMaterialLike(material);
	return dane;
	
}

@ResponseBody
@GetMapping("/findoperation")
public List<dane> findoperation(@RequestParam String mat){
	String material = mat;
	System.out.println(mat);
	
	List<dane> dane = crudData.findByMaterial(material);
	return dane;
	
}



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
