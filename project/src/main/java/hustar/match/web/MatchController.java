package hustar.match.web;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import egovframework.com.cmm.service.CommonService;
import egovframework.com.cmm.util.EgovProperties;
import hustar.match.service.MatchVO;
import hustar.member.service.MemberVO;
import hustar.util.FileUtil;

@Controller 
public class MatchController {

	private static final String PHOTO_UPLOAD_PATH=EgovProperties.getProperty("Globals.fileStorePath") + "photo"; 
	
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
	
	//매칭 소개 화면 =======================================================================================
	@RequestMapping(value= {"/match/match_intro.do"})
	public String match_intro() {
		return "/match/match_intro";
	}
	
	//매칭 정보 등록 화면=======================================================================================
	@RequestMapping(value= {"/match/match_join.do"})
	public String match_join(MatchVO searchVO, RedirectAttributes redirectAttributes, HttpSession session) throws Exception {
		
		MemberVO loginVO =  (MemberVO)session.getAttribute("login");
		
		searchVO.setSt_id(loginVO.getSt_id());
		//System.out.println("searchVO" +searchVO.st_id);
		
		int cnt = commonService.selectListTotCnt(searchVO, null, null, "matchDAO.selectMatchCnt");
	    	
		if (cnt != 1) {
		    	return "/match/match_join";
		    } 
		    else{
		    	
		    	redirectAttributes.addFlashAttribute("msg", "이미 매칭 정보가 입력되어있습니다. 매칭 수정을 선택해주세요!");	
		    	return "redirect:/index.do"; 
		    }
	}
	
	//매칭 정보 수정 화면=======================================================================================
	@RequestMapping(value= {"/match/match_modify.do"})
	public String match_modify(Model model, MatchVO searchVO, HttpSession session, RedirectAttributes redirectAttributes) throws Exception {
		
		MemberVO loginVO =  (MemberVO)session.getAttribute("login");
	
		searchVO.setSt_id(loginVO.getSt_id());
		
		int cnt = commonService.selectListTotCnt(searchVO, null, null, "matchDAO.selectMatchCnt");
		System.out.println("cnt="+cnt);
		
		if (cnt ==0) {
			redirectAttributes.addFlashAttribute("msg", "입력된 매칭 정보가 없어요!");
			return "match/match_join";
		} else {

			MatchVO matchVO = (MatchVO) commonService.selectView(searchVO, null, null,"matchDAO.selectMatchView");
			model.addAttribute("matchVO",matchVO);
			
			return "/match/match_modify"; //매칭 수정 click - > 매칭수정 화면 view 보여줌	
		}
	}
	
	
	//매칭 정보 DB로 입력=======================================================================================
	@RequestMapping("/match/match_insert.do")
	public String match_insert(
			MatchVO matchVO, 
			RedirectAttributes redirectAttributes, HttpSession session,MultipartFile uploadFile) throws Exception {
		 
		  MemberVO loginVO = (MemberVO)session.getAttribute("login"); //

		  matchVO.setSt_id(loginVO.getSt_id());
		  matchVO.setName(loginVO.getName());

		  String filename =FileUtil.saveFile(uploadFile, PHOTO_UPLOAD_PATH);//사진을  경로에 저장합니다. 
		  
		  if(filename!=null) {
			  
			  matchVO.setFilename(filename); //파일 이름을 저장 
			  String oriFilename =filename.split("_")[1];
			  matchVO.setOriFilename(oriFilename);
		  }
		  
		  commonService.insert(matchVO, null, null, "matchDAO.insertMatch"); //매칭정보 등록 
		  	  
	      return "redirect:/index.do";  //메인 화면으로 이동
	}

	//매칭 수정 내용 DB로 저장=======================================================================================
	@RequestMapping("/match/match_update.do")
	public String match_update(
			@ModelAttribute("matchVO") MatchVO matchVO, 
			RedirectAttributes redirectAttributes, HttpSession session,MultipartFile uploadFile) throws Exception {
		
		MemberVO loginVO =  (MemberVO)session.getAttribute("login");
		
		matchVO.setSt_id(loginVO.getSt_id());
		
		String filename =FileUtil.saveFile(uploadFile, PHOTO_UPLOAD_PATH);//사진을  경로에 저장합니다. 
		
		if(filename!=null) {
			  
			  matchVO.setFilename(filename); //파일 이름을 저장 
			  String oriFilename =filename.split("_")[1];
			  matchVO.setOriFilename(oriFilename);
		  }
		
		// 회원정보를 DB에 삽입해주는 기능. 
		commonService.update(matchVO, null, null, "matchDAO.updateMatch"); 
		redirectAttributes.addFlashAttribute("msg", "매칭정보수정이 완료되었습니다.");
				
		return "/match/match_modify";
	}
	
	@RequestMapping("/match/match_image.do")
	   public void gallery_iamge(
			   MatchVO searchVO,
			   HttpServletResponse response) throws Exception{
	   //view가 필요없기 때문에 반환형 void로 
		
		  MatchVO matchVO= (MatchVO) commonService.selectView(searchVO, null, null,"matchDAO.selectMatchView");
		  
		  FileUtil.displayImage(response,PHOTO_UPLOAD_PATH,matchVO.getFilename());
		   
	   }
	   
	@RequestMapping("/match/match_deleteFile.do")
	   public ModelAndView match_deleteFile(MatchVO searchVO,Model model) throws Exception{
		   //ajax로 처리하므로 ModelAndView로 
		   MatchVO fileVO = (MatchVO) commonService.selectView(searchVO, null, null,"matchDAO.selectMatchView");
		   String filePath=PHOTO_UPLOAD_PATH +"/" +fileVO.getFilename(); //파일의 경로를 string으로 받아와서
		   FileUtil.deleteFile(filePath);
		   
		   //파일을 지웠으니 DB를 업데이트를 함
		   MatchVO matchVO = new MatchVO();
		   matchVO.setSt_id(searchVO.getSt_id());
		   
		   matchVO.setFilename("");
		   matchVO.setOriFilename("");
		   
		   commonService.update(matchVO, null, null,"matchDAO.updateMatch2");
		   
		   model.addAttribute("success","true");
		   
		   return new ModelAndView(jsonView);
		   
	   }
		
	
}
