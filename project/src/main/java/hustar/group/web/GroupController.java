package hustar.group.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroupController {
	@RequestMapping(value={"/study.do"})
	public String study() {
		return "group/study";
	}
	
	@RequestMapping(value={"/circles.do"})
	public String circles() {
		return "group/circles";
	}
}
