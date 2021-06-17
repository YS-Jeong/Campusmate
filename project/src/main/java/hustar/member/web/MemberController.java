package hustar.member.web;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import egovframework.com.cmm.service.CommonService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import hustar.group.service.CircleVO;
import hustar.group.service.Circle_ReplyVO;
import hustar.group.service.StudyVO;
import hustar.group.service.Study_ReplyVO;
import hustar.member.service.MemberVO;

@Controller
public class MemberController {
	
	@Resource(name="commonService")
	CommonService commonService; 
	
	//AJAX 
	@Resource(name="jsonView")
	MappingJackson2JsonView jsonView; 
	
	//로그인================================================================ 
	@RequestMapping("/member/login.do")
	public String login() {
		return "/member/login";
	}
	
	//회원가입================================================================ 
	@RequestMapping("/member/join.do")
	public String join(HttpServletRequest request, 
			Model model) throws Exception {
		
		//String pass = "1234";
		//String encpass = BCrypt.hashpw(pass, BCrypt.gensalt());
		//System.out.println("enpass = " + encpass);
		//boolean success = BCrypt.checkpw(pass, "$2a$10$cyOMmrN9WbcmE.2yHU823OAIiyrzitTcTWpFRbLNnemQPSsLJ04uu");
		//System.out.println("success = " + success);
		
		Map<String, ?> inputFlashMap = RequestContextUtils.getInputFlashMap(request);
		if (inputFlashMap != null) {
			model.addAttribute("msg", inputFlashMap.get("msg"));
			System.out.println("msg=" + inputFlashMap.get("msg"));
		}
		
		return "/member/join";
	}
	
	//관리자 계정================================================================ 
	@RequestMapping("/member/admin.do")
	public String admin() {
		return "/member/admin";
	}

	//회원가입시 입력 정보를 DB로 전달================================================================ 
	@RequestMapping("/member/joinInsert.do")
	public String joinInsert(
			@ModelAttribute("memberVO") MemberVO memberVO, 
			RedirectAttributes redirectAttributes) throws Exception {

		System.out.println("id = " + memberVO.getSt_id());
		System.out.println("password = " + memberVO.getPassword());
		System.out.println("name = " + memberVO.getName());
		System.out.println("phone = " + memberVO.getPhone());
		System.out.println("birth = " + memberVO.getBirth());
		System.out.println("school = " + memberVO.getSchool());
		System.out.println("gender = " + memberVO.getGender());
		System.out.println("depart = " + memberVO.getDepart());
		
		int cnt = commonService.selectListTotCnt(memberVO, null, null, "memberDAO.selectMemberCnt");
		System.out.println("cnt = " + cnt);
		
		if (cnt > 0) {
			redirectAttributes.addFlashAttribute("msg", "이미 가입된 학번이에요!");
			
		} else {
			// password를 hash 함수를 이용하여 암호화 시켜주는 기능. 
			String encpass = BCrypt.hashpw(memberVO.getPassword(), BCrypt.gensalt()); 
			memberVO.setPassword(encpass);
	
			// 회원정보를 DB에 삽입해주는 기능. 
			commonService.insert(memberVO, null, null, "memberDAO.insertMember"); 
			redirectAttributes.addFlashAttribute("msg", "CAMPUSMATE에 오신 것을 환영합니다.");
		}
		
		return "redirect:/member/login.do";
	}
	
	//학번 중복 체크================================================================ 
	@RequestMapping("/member/checkId.do")
	public ModelAndView checkSt_Id(ModelMap model, 
		@ModelAttribute("memberVO") MemberVO memberVO) throws Exception{
		
		//campus_member 테이블에서 st_id가 존재하는지 count, 있다면 cnt = 1, 없다면 cnt = 0.   
		int cnt = commonService.selectListTotCnt(memberVO, null, null, "memberDAO.selectMemberCnt");
		
		//이미 존재하는 st_id라면  duplicate 값으로 true를 전달, 그렇지 않다면 false.  
		if (cnt > 0) {
			model.addAttribute("duplicate", true);
		} else if (cnt == 0){
			model.addAttribute("duplicate", false);
		}
		
		return new ModelAndView(jsonView); 
	}
	
	//로그인======================================================================
	@RequestMapping("/member/actionLogin.do")
	public String actionLogin(
			@ModelAttribute("memberVO") MemberVO memberVO,
			 RedirectAttributes redirectAttributes) throws Exception{
		MemberVO loginVO = (MemberVO)commonService.selectView(memberVO, null, null, "memberDAO.selectMemberView");
		
		// ID가 있을 때 
		if(loginVO != null) {
			if (BCrypt.checkpw(memberVO.getPassword(), loginVO.getPassword())==true){
				HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
				request.getSession().setAttribute("login", loginVO);
			
				//비밀번호 일치 
				return "redirect:/index.do";
			} else {
				//비밀번호 불일치 
				redirectAttributes.addFlashAttribute("msg", "비밀번호가 맞지 않아요!");
			}
		} else {
			//ID 존재하지 않음 
			redirectAttributes.addFlashAttribute("msg", "존재하지 않는 학번이에요!");
		}
		
		return "redirect:/member/login.do";
	}
	
	//로그아웃===============================================================================================
	@RequestMapping("/member/actionLogout.do")
	public String actionLogout() throws Exception{
		RequestAttributes requestAttribute = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()); 
		requestAttribute.setAttribute("login", null, RequestAttributes.SCOPE_SESSION);
		
		return "redirect:/member/login.do";
	}
	
	//ajax로그인============================================================================================
	@RequestMapping("/member/actionLoginAsync.do")
	public ModelAndView actionLoginAsync(ModelMap model, String st_id, String password) throws Exception{
		
		MemberVO memberVO = new MemberVO();
		memberVO.setSt_id(st_id);
		memberVO.setPassword(password);
		MemberVO loginVO = (MemberVO) commonService.selectView(memberVO, null, null, "memberDAO.selectMemberView");
		
		if(loginVO != null) {
			if (BCrypt.checkpw(memberVO.getPassword(), loginVO.getPassword())==true){
				HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	            request.getSession().setAttribute("login", loginVO);

				model.addAttribute("login", "true");
			} else {
				model.addAttribute("login", "false");
			}
		} else {
			model.addAttribute("login", "false");
		}
		
		return new ModelAndView(jsonView);
	}
	
	//회원정보수정===========================================================================================
	@RequestMapping("/member/modify.do")
	public String modify() throws Exception{
		
		return "/member/modify";  
	}
	
	//회원수정시 입력 정보를 DB로 전달================================================================ 
	@RequestMapping("/member/updateInsert.do")
	public String updateInsert(
			@ModelAttribute("memberVO") MemberVO memberVO, 
			RedirectAttributes redirectAttributes) throws Exception {

		// password를 hash 함수를 이용하여 암호화 시켜주는 기능. 
		String encpass = BCrypt.hashpw(memberVO.getPassword(), BCrypt.gensalt()); 
		memberVO.setPassword(encpass);
	
		// 회원정보를 DB에 삽입해주는 기능. 
		commonService.update(memberVO, null, null, "memberDAO.updateMember"); 
		redirectAttributes.addFlashAttribute("msg", "회원 정보가 수정되었어요. 다시 로그인 해주세요!");
		
		//로그 아웃 
		RequestAttributes requestAttribute = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()); 
		requestAttribute.setAttribute("login", null, RequestAttributes.SCOPE_SESSION);
		
		return "redirect:/member/login.do";
	}
	
	//내가 쓴 글 보기===========================================================================================
		@RequestMapping("/member/mycontents.do")
		public String my_contents(Model model, CircleVO searchVO, StudyVO studyVO) throws Exception{
			
			//페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
			PaginationInfo paginationInfo_circle = new PaginationInfo();
			PaginationInfo paginationInfo_study = new PaginationInfo();
			
			paginationInfo_circle.setCurrentPageNo(searchVO.getPageIndex());	//현재 페이지
			paginationInfo_study.setCurrentPageNo(studyVO.getPageIndex());	//현재 페이지
			
			paginationInfo_circle.setRecordCountPerPage(searchVO.getRecordCountPerPage());	//한페이당 몇개표시 할건가
			paginationInfo_study.setRecordCountPerPage(studyVO.getRecordCountPerPage());
			
			paginationInfo_circle.setPageSize(searchVO.getPageSize());
			paginationInfo_study.setPageSize(studyVO.getPageSize());
					
			searchVO.setFirstIndex(paginationInfo_circle.getFirstRecordIndex());
			studyVO.setFirstIndex(paginationInfo_study.getFirstRecordIndex());
			
			searchVO.setLastIndex(paginationInfo_circle.getLastRecordIndex());
			studyVO.setLastIndex(paginationInfo_study.getLastRecordIndex());
			
			searchVO.setPageSize(paginationInfo_circle.getPageSize());
			studyVO.setPageSize(paginationInfo_study.getPageSize());
			
			int recordCount_circle = commonService.selectListTotCnt(searchVO, null, null, "circleDAO.selectCircleListCnt");
			int recordCount_study = commonService.selectListTotCnt(studyVO, null, null, "studyDAO.selectStudyListCnt");
			
			paginationInfo_circle.setTotalRecordCount(recordCount_circle);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
			paginationInfo_study.setTotalRecordCount(recordCount_study);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
									
			List<CircleVO> circleVOList = (List<CircleVO>)commonService.selectList(searchVO, null, null, "circleDAO.selectCircleList");
			List<StudyVO> studyVOList = (List<StudyVO>)commonService.selectList(studyVO, null, null, "studyDAO.selectStudyList");			
			
			model.addAttribute("circleVOList", circleVOList);
			model.addAttribute("studyVOList", studyVOList);
			model.addAttribute("paginationInfo", paginationInfo_circle);
			model.addAttribute("paginationInfo", paginationInfo_study);
			model.addAttribute("searchVO", searchVO);
			
			return "/member/mycontents";  
		}
}
