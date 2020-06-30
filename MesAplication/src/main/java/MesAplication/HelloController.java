package MesAplication;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

@RestController
public class HelloController {

	
	
	@RequestMapping("/")
	public RedirectView index() {
		return new RedirectView("show");
	}
}