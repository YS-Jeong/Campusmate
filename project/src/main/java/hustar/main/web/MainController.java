package hustar.main.web;

import javax.annotation.Resource;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.service.CommonService;
import hustar.match.service.MatchVO;
import hustar.member.service.MemberVO;

@Controller 
public class MainController {
	
	@Resource(name="commonService")
	CommonService commonService; 
	
	@RequestMapping(value={"/index.do","/main/index.do"})
	public String index() {
	
		return "/main/index";
	}
	
	@RequestMapping(value={"/main.do"})
	public String index2() {
		return "/main/main"; //컨트롤러에서 return view값을 넘겨줘야 화면에 뜸! 
	}
}
