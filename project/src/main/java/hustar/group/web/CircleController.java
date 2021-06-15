package hustar.group.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import egovframework.com.cmm.service.CommonService;
import egovframework.com.cmm.util.EgovProperties;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import hustar.group.service.CircleVO;
import hustar.group.service.Circle_ReplyVO;
import hustar.member.service.MemberVO;
import hustar.util.FileUtil;


@Controller
public class CircleController {
	
	private static final String CIRCLE_UPLOAD_PATH=EgovProperties.getProperty("Globals.fileStorePath") + "circle";
	
	@Resource(name = "commonService")
	CommonService commonService;
	
	@Resource(name = "jsonView")
	MappingJackson2JsonView jsonView;
	
	//전체 동아리 리스트
	@RequestMapping(value={"/group/circle_list.do"})
	public String circle_list(Model model, CircleVO searchVO) throws Exception {
		
		System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
		
		//페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());	//현재 페이지
		paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());	//한페이당 몇개표시 할건가
		paginationInfo.setPageSize(searchVO.getPageSize());
				
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setPageSize(paginationInfo.getPageSize());
				
		int recordCount = commonService.selectListTotCnt(searchVO, null, null, "circleDAO.selectCircleListCnt");
		paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
				
				
		List<CircleVO> circleVOList = (List<CircleVO>)commonService.selectList(searchVO, null, null, "circleDAO.selectCircleList");
		
		model.addAttribute("circleVOList", circleVOList);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("searchVO", searchVO);
			
		return "/group/circle_list";
	}
	//경북대 동아리 리스트
	@RequestMapping(value={"/group/knu_circle_list.do"})
	public String knu_circle_list(Model model, CircleVO searchVO) throws Exception {
		
		System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
		
		//페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());	//현재 페이지
		paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());	//한페이당 몇개표시 할건가
		paginationInfo.setPageSize(searchVO.getPageSize());
				
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setPageSize(paginationInfo.getPageSize());
				
		int recordCount = commonService.selectListTotCnt(searchVO, null, null, "circleDAO.selectCircleListCnt");
		paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
				
				
		List<CircleVO> circleVOList = (List<CircleVO>)commonService.selectList(searchVO, null, null, "circleDAO.selectKNUCircleList");
				
		model.addAttribute("circleVOList", circleVOList);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("searchVO", searchVO);
			
		return "/group/knu_circle_list";
	}
	//영남대 동아리 리스트
	@RequestMapping(value={"/group/yu_circle_list.do"})
	public String yu_circle_list(Model model, CircleVO searchVO) throws Exception {
		
		System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
		
		//페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());	//현재 페이지
		paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());	//한페이당 몇개표시 할건가
		paginationInfo.setPageSize(searchVO.getPageSize());
				
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setPageSize(paginationInfo.getPageSize());
				
		int recordCount = commonService.selectListTotCnt(searchVO, null, null, "circleDAO.selectCircleListCnt");
		paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
				
				
		List<CircleVO> circleVOList = (List<CircleVO>)commonService.selectList(searchVO, null, null, "circleDAO.selectYUCircleList");
				
		model.addAttribute("circleVOList", circleVOList);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("searchVO", searchVO);
			
		return "/group/yu_circle_list";
	}
	//계명대 동아리 리스트 
	@RequestMapping(value={"/group/kmu_circle_list.do"})
	public String kmu_circle_list(Model model, CircleVO searchVO) throws Exception {
		
		System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
		
		//페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());	//현재 페이지
		paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());	//한페이당 몇개표시 할건가
		paginationInfo.setPageSize(searchVO.getPageSize());
				
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setPageSize(paginationInfo.getPageSize());
				
		int recordCount = commonService.selectListTotCnt(searchVO, null, null, "circleDAO.selectCircleListCnt");
		paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
				
				
		List<CircleVO> circleVOList = (List<CircleVO>)commonService.selectList(searchVO, null, null, "circleDAO.selectKMUCircleList");
				
		model.addAttribute("circleVOList", circleVOList);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("searchVO", searchVO);
			
		return "/group/kmu_circle_list";
	}
	
	//연합 동아리 리스트 목록 
	@RequestMapping(value={"/group/union_circle_list.do"})
	public String union_circle_list(Model model, CircleVO searchVO) throws Exception {
		
		System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
		
		//페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());	//현재 페이지
		paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());	//한페이당 몇개표시 할건가
		paginationInfo.setPageSize(searchVO.getPageSize());
				
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setPageSize(paginationInfo.getPageSize());
				
		int recordCount = commonService.selectListTotCnt(searchVO, null, null, "circleDAO.selectCircleListCnt");
		paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
				
				
		List<CircleVO> circleVOList = (List<CircleVO>)commonService.selectList(searchVO, null, null, "circleDAO.selectUNIONCircleList");
		
		model.addAttribute("circleVOList", circleVOList);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("searchVO", searchVO);
			
		return "/group/union_circle_list";
	}
	
	@RequestMapping(value={"/group/circle_view.do"})
	public String circle_view(CircleVO searchVO, Model model) throws Exception {
		
		CircleVO circleVO = (CircleVO)commonService.selectView(searchVO, null, null, "circleDAO.selectCircleView");
		
		//commonService.update(circleVO, null, null, "circleDAO.updateCircleHit");
	
		model.addAttribute("circleVO", circleVO);
		
		List<Circle_ReplyVO> circle_replyVOList = (List<Circle_ReplyVO>)commonService.selectList(circleVO, null, null, "circle_replyDAO.selectReplyList");
		//commonService.update(circleVO, null, null, "circleDAO.updateCircleHit");
		model.addAttribute("circle_replyVOList", circle_replyVOList);
		
		return "/group/circle_view";
	}
	
	@RequestMapping(value={"/group/circle_write.do"})
	public String circle_write(Model model) throws Exception{
		
		model.addAttribute("mode", "write");
		
		return "/group/circle_write";
	}
	
	@RequestMapping("/group/circle_write_action.do")
	public String circle_write_action(MultipartFile uploadFile, CircleVO circleVO, Model model, HttpSession session, String mode, RedirectAttributes redirectAttributes)  throws Exception{
		
		MemberVO loginVO =  (MemberVO)session.getAttribute("login");
		
		//로그인이 안됐다면~
		if(loginVO == null) {
			redirectAttributes.addFlashAttribute("msg", "로그인이 필요합니다");
			return "redirect:/member/login.do";
		}
		
		
		circleVO.setWriter(loginVO.getName());	//작성자는 현재 로그인한 사람이기때문에 MemberVO로 부터 읽어온다. 그리고 나서 쿼리에서 #{writer}작성
		
		// ex) sfsadsadsa_dog.jpg
		String filename = FileUtil.saveFile(uploadFile, CIRCLE_UPLOAD_PATH);
		if(filename != null){
			
			circleVO.setFilename(filename);
			
			//arr[] = filename.split("_") -> 배열에 들어간다.
			//arr[0] = "sa-dsada-sdasd"
			//arr[1] = "김도연.jpg"
			String oriFilename = filename.split("_")[1];	//원래 파일이름을 가져온다.
			circleVO.setOriFilename(oriFilename);	//저장한 파일이름과 원래 파일이름이 VO에 담긴다.
		}
		
				//mode: write, modify
		if("write".equals(mode)) {
			commonService.insert(circleVO, null, null, "circleDAO.insertCircle");
		}else{
			commonService.update(circleVO, null, null, "circleDAO.updateCircle");
		}                                               
		
		System.out.println(circleVO.getUniversity());
        
        if(circleVO.getUniversity().equals("경북대")) {
       	 return "redirect:/group/knu_circle_list.do"; //redirect 갱신해야하니까
        } else if(circleVO.getUniversity().equals("영남대")) {
       	 return "redirect:/group/yu_circle_list.do";//redirect 갱신해야하니까
        } else if(circleVO.getUniversity().equals("계명대")) {
       	 return "redirect:/group/kmu_circle_list.do";//redirect 갱신해야하니까 
        } else {
       	 return "redirect:/group/union_circle_list.do";
        }//redirect 갱신해야하니까            
	}
	
	
	@RequestMapping("/group/circle_modify.do")
	public String circle_modify(CircleVO searchVO, Model model)  throws Exception{
		
		CircleVO circleVO = (CircleVO)commonService.selectView(searchVO, null, null, "circleDAO.selectCircleView");
		
		model.addAttribute("circleVO", circleVO);
		
		model.addAttribute("mode", "modify");
		
		return "/group/circle_write";
	}
	
	
	
	@RequestMapping("/group/circle_delete.do")
	public String circle_delete(CircleVO circleVO) throws Exception{
		
		System.out.println("seq = " + circleVO.getSeq());
		
		commonService.delete(circleVO, null, null, "circleDAO.deleteCircle");
		
		return "redirect:/group/circle_list.do";
	}
	
	
	@RequestMapping("/group/circle_downloadFile.do")
	public void circle_downloadFile(CircleVO searchVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		CircleVO circleVO = (CircleVO)commonService.selectView(searchVO, null, null, "circleDAO.selectCircleView");
		
		String filename = circleVO.getFilename();
		if(filename == null) {
			return ;
		}
		
		String filePath = CIRCLE_UPLOAD_PATH + "/" + circleVO.getFilename();
		
		FileUtil.downFile(request, response, filePath, circleVO.getOriFilename());
	}
	
	
	@RequestMapping("/group/circle_deleteFile.do")
	public ModelAndView circle_deleteFile(CircleVO searchVO, Model model) throws Exception{
		
		CircleVO fileVO = (CircleVO)commonService.selectView(searchVO, null, null, "circleDAO.selectCircleView");
		
		String filePath = CIRCLE_UPLOAD_PATH + "/" + fileVO.getFilename();
		if(FileUtil.deleteFile(filePath) == true) {
			
			CircleVO circleVO = new CircleVO();
			circleVO.setSeq(searchVO.getSeq());
			circleVO.setFilename("");
			circleVO.setOriFilename("");
			
			commonService.update(circleVO, null, null, "circleDAO.updateCircle");
			
			model.addAttribute("success", true);
			
			
		}else {
			model.addAttribute("success", false);
		}
		
		return new ModelAndView(jsonView);
	}	
	
	@RequestMapping(value={"/group/circle_reply_insert.do"})
	public String Circle_Reply_insert(CircleVO circleVO, Circle_ReplyVO circle_replyVO, Model model,HttpSession session) throws Exception {
		
		MemberVO loginVO =  (MemberVO)session.getAttribute("login");
		circle_replyVO.setCircle_id(circleVO.getSeq());
		circle_replyVO.setName(loginVO.getName());
		
		commonService.insert(circle_replyVO, null, null, "circle_replyDAO.insertReply");
		
		return "redirect:/group/circle_view.do?seq="+circleVO.getSeq();
	}
	
}
