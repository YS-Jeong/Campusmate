package hustar.match.web;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import egovframework.com.cmm.service.CommonService;
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
	public String matching(Model model, MatchVO searchVO, HttpSession session) throws Exception {
		
		//매칭 결과화면으로 이동
		MemberVO loginVO =  (MemberVO)session.getAttribute("login");
		
		searchVO.setSt_id(loginVO.getSt_id());
		
		
		MatchVO matchVO = (MatchVO) commonService.selectView(searchVO, null, null,"matchDAO.selectMatchView");
		model.addAttribute("matchVO",matchVO);
		
		searchVO.setPurpose(matchVO.getPurpose());
		
		List<MatchVO> matchVOList = (List<MatchVO>)commonService.selectList(searchVO, null, null,"matchDAO.selectMatchList"); //조건과 일치하는 사람들을 리스트로 받아옴
		model.addAttribute("matchVOList",matchVOList);
	
		
		return "/match/matching";
	}
	
	@RequestMapping(value= {"/match/match_intro.do"})
	public String match_intro() {
		return "/match/match_intro";
	}
	
	@RequestMapping(value= {"/match/match_join.do"})
	public String match_join(MatchVO searchVO, RedirectAttributes redirectAttributes, HttpSession session) throws Exception {
		
		
		MemberVO loginVO =  (MemberVO)session.getAttribute("login");
		
		searchVO.setSt_id(loginVO.getSt_id());
		
		int cnt = commonService.selectListTotCnt(searchVO, null, null, "matchDAO.selectMatchCnt");
		
		
		
	    	if (cnt != 1) {
		    	return "/match/match_join";
		    } 
		    else{
		    	
		    	redirectAttributes.addFlashAttribute("msg", "이미 매칭 정보가 입력되어있습니다. 매칭 수정을 선택해주세요!");	
		    	return "redirect:/index.do"; 
		    }
	}
	
	@RequestMapping(value= {"/match/match_join_write.do"})
	public String match_join_write() {
		return "/match/match_join_write";
	}
	

	
	@RequestMapping(value= {"/match/match_modify.do"})
	public String match_modify(Model model, MatchVO searchVO, HttpSession session) throws Exception {
		
		MemberVO loginVO =  (MemberVO)session.getAttribute("login");

		
		searchVO.setSt_id(loginVO.getSt_id());
		
		MatchVO matchVO = (MatchVO) commonService.selectView(searchVO, null, null,"matchDAO.selectMatchView");
		model.addAttribute("matchVO",matchVO);
		
		
		return "/match/match_modify"; //매칭 수정 click - > 매칭수정 화면 view 보여줌

	}
	
	@RequestMapping("/match/match_insert.do")
	public String match_Insert(
			@ModelAttribute("matchVO") MatchVO matchVO, 
			RedirectAttributes redirectAttributes, HttpSession session) throws Exception {
		 
		  MemberVO loginVO = (MemberVO)session.getAttribute("login");
		  
		  matchVO.setSt_id(loginVO.getSt_id());
		  matchVO.setName(loginVO.getName());
		  	  
	      int cnt = commonService.selectListTotCnt(matchVO, null, null, "matchDAO.selectMatchCnt");
	      System.out.println("cnt = " + cnt);
	      
	      if (cnt > 0) {
	         redirectAttributes.addFlashAttribute("msg", "이미 가입된 학번이에요!");
	         
	      } else {
	         // 회원정보를 DB에 삽입해주는 기능. 
	         commonService.insert(matchVO, null, null, "matchDAO.insertMatch"); 
	      }
	      redirectAttributes.addFlashAttribute("msg", "매칭등록이 완료되었습니다.");
	      
	      return "redirect:/index.do"; 
	}

	
	@RequestMapping("/match/match_update.do")
	public String match_update(
			@ModelAttribute("matchVO") MatchVO matchVO, 
			RedirectAttributes redirectAttributes, HttpSession session) throws Exception {
		
		MemberVO loginVO =  (MemberVO)session.getAttribute("login");
		
		matchVO.setSt_id(loginVO.getSt_id());
		
		// 회원정보를 DB에 삽입해주는 기능. 
		commonService.update(matchVO, null, null, "matchDAO.updateMatch"); 
		redirectAttributes.addFlashAttribute("msg", "매칭정보수정이 완료되었습니다.");
				
		return "/match/match_modify";
	}
	
	
}
