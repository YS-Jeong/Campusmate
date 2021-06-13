package hustar.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class MainController {
	
	@RequestMapping(value={"/index.do"})
	public String index() {
		return "main/index";
	}
	@RequestMapping(value={"/main.do"})
	public String index2() {
		return "main/main"; //컨트롤러에서 return view값을 넘겨줘야 화면에 뜸! 
	}
}
