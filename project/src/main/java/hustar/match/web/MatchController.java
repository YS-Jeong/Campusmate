package hustar.match.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import egovframework.com.cmm.service.CommonService;
import hustar.group.service.CircleVO;
import hustar.group.service.StudyVO;
import hustar.match.service.MatchVO;
import hustar.member.service.MemberVO;

@Controller 
public class MatchController {
	
	@Resource(name="commonService")
	CommonService commonService; 
	
	//AJAX 
	@Resource(name="jsonView")
	MappingJackson2JsonView jsonView; 
	
	
	@RequestMapping(value= {"/match/matching.do"})
	public String matching() {
		return "/match/matching";
	}
	
	@RequestMapping(value= {"/match/match_intro.do"})
	public String match_intro() {
		return "/match/match_intro";
	}
	
	@RequestMapping(value= {"/match/match_join.do"})
	public String match_join() {
		return "/match/match_join";
	}
	
	@RequestMapping(value= {"/match/match_join_write.do"})
	public String match_join_write() {
		return "/match/match_join_write";
	}
	

	
	@RequestMapping(value= {"/match/match_modify.do"})
	public String match_modify(Model model, MatchVO searchVO) throws Exception {
		MatchVO matchVO = (MatchVO) commonService.selectView(searchVO, null, null,"matchDAO.selectMatchView");
		
		model.addAttribute("matchVO",matchVO);
		
		
		return "/match/match_modify"; //매칭 수정 click - > 매칭수정 화면 view 보여줌
	}
	
	@RequestMapping("/match/match_insert.do")
	public String match_Insert(
			@ModelAttribute("matchVO") MatchVO matchVO, 
			RedirectAttributes redirectAttributes,int st_id) throws Exception {
	
		
		
		int cnt = commonService.selectListTotCnt(matchVO, null, null, "matchDAO.selectMatchCnt");
		System.out.println("cnt = " + cnt);
		
		if (cnt > 0) {
			redirectAttributes.addFlashAttribute("msg", "이미 가입된 학번이에요!");
			
		} else {
			// 회원정보를 DB에 삽입해주는 기능. 
			commonService.insert(matchVO, null, null, "matchDAO.insertMatch"); 
		}
		redirectAttributes.addFlashAttribute("msg", "매칭등록이 완료되었습니다.");
		
		return "redirect:/match/matching.do"; 
	}

	
	@RequestMapping("/match/match_update.do")
	public String match_update(
			@ModelAttribute("matchVO") MatchVO matchVO, 
			RedirectAttributes redirectAttributes) throws Exception {

		
		// 회원정보를 DB에 삽입해주는 기능. 
		commonService.update(matchVO, null, null, "matchDAO.updateMatch"); 
		redirectAttributes.addFlashAttribute("msg", "매칭정보가 수정되었어요.");
		
		
		
		return "redirect:/match/match_modify.do";

	}
	
}
