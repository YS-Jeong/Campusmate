package hustar.match.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class MatchController {
	
	@RequestMapping(value= {"/matching.do"})
	public String matching() {
		return "match/matching";
	}
	
	@RequestMapping(value= {"/match_intro.do"})
	public String match_intro() {
		return "match/match_intro";
	}
	
	@RequestMapping(value= {"/match_join.do"})
	public String match_join() {
		return "match/match_join";
	}
	
	@RequestMapping(value= {"/match_modify.do"})
	public String match_modify() {
		return "match/match_modify";
	}
}
