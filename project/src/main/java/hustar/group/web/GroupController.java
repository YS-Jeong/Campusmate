package hustar.group.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroupController {
	@RequestMapping(value={"/study_list.do"})
	public String study_list() {
		return "group/study_list";
	}
	
	@RequestMapping(value={"/study_view.do"})
	public String study_view() {
		return "group/study_view";
	}
	
	@RequestMapping(value={"/study_write.do"})
	public String study_write() {
		return "group/study_write";
	}
	
	@RequestMapping(value={"/circle_list.do"})
	public String circle_list() {
		return "group/circle_list";
	}
	
	@RequestMapping(value={"/circle_view.do"})
	public String circle_view() {
		return "group/circle_view";
	}
	
	@RequestMapping(value={"/circle_write.do"})
	public String circle_write() {
		return "group/circle_write";
	}
}
