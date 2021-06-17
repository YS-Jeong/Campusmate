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
import hustar.group.service.StudyVO;
import hustar.group.service.Study_ReplyVO;
import hustar.member.service.MemberVO;
import hustar.util.FileUtil;

@Controller
public class StudyController {
   
   private static final String STUDY_UPLOAD_PATH=EgovProperties.getProperty("Globals.fileStorePath") + "study";
   
   //리소스를 통해 객체할당하고 mappers로 부터 DB값 java로 사용가능
   @Resource(name = "commonService")
   CommonService commonService;
   
   @Resource(name="jsonView")
   MappingJackson2JsonView jsonView;
      
    //전체 study 게시판 목록 
   @RequestMapping(value={"/group/study_list.do"})
    public String study_list(Model model, StudyVO searchVO)  throws Exception{
         
         System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
         
         //페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
         PaginationInfo paginationInfo = new PaginationInfo();
         paginationInfo.setCurrentPageNo(searchVO.getPageIndex());   //현재 페이지
         paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());   //한페이당 몇개표시 할건가
         paginationInfo.setPageSize(searchVO.getPageSize());
         
         searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
         searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
         searchVO.setPageSize(paginationInfo.getPageSize());
         
         int recordCount = commonService.selectListTotCnt(searchVO, null, null, "studyDAO.selectStudyListCnt");
         paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
         
         
         List<StudyVO> studyVOList = (List<StudyVO>)commonService.selectList(searchVO, null, null, "studyDAO.selectStudyList");
         
         model.addAttribute("studyVOList", studyVOList);
         model.addAttribute("paginationInfo", paginationInfo);
         model.addAttribute("searchVO", searchVO);
         
         return "/group/study_list";
      }
   	//경북대study 게시판 목록 
   @RequestMapping(value={"/group/knu_study_list.do"})
    public String knu_study_list(Model model, StudyVO searchVO)  throws Exception{
         
         System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
         
         //페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
         PaginationInfo paginationInfo = new PaginationInfo();
         paginationInfo.setCurrentPageNo(searchVO.getPageIndex());   //현재 페이지
         paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());   //한페이당 몇개표시 할건가
         paginationInfo.setPageSize(searchVO.getPageSize());
         
         searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
         searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
         searchVO.setPageSize(paginationInfo.getPageSize());
         
         int recordCount = commonService.selectListTotCnt(searchVO, null, null, "studyDAO.selectStudyListCnt");
         paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
         
         
         List<StudyVO> studyVOList = (List<StudyVO>)commonService.selectList(searchVO, null, null, "studyDAO.selectKNUStudyList");
         
         model.addAttribute("studyVOList", studyVOList);
         model.addAttribute("paginationInfo", paginationInfo);
         model.addAttribute("searchVO", searchVO);
         
         return "/group/knu_study_list";
      }
	//영남대 study 게시판 목록 
   @RequestMapping(value={"/group/yu_study_list.do"})
    public String yu_study_list(Model model, StudyVO searchVO)  throws Exception{
         
         System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
         
         //페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
         PaginationInfo paginationInfo = new PaginationInfo();
         paginationInfo.setCurrentPageNo(searchVO.getPageIndex());   //현재 페이지
         paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());   //한페이당 몇개표시 할건가
         paginationInfo.setPageSize(searchVO.getPageSize());
         
         searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
         searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
         searchVO.setPageSize(paginationInfo.getPageSize());
         
         int recordCount = commonService.selectListTotCnt(searchVO, null, null, "studyDAO.selectStudyListCnt");
         paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
         
         
         List<StudyVO> studyVOList = (List<StudyVO>)commonService.selectList(searchVO, null, null, "studyDAO.selectYUStudyList");
         
         model.addAttribute("studyVOList", studyVOList);
         model.addAttribute("paginationInfo", paginationInfo);
         model.addAttribute("searchVO", searchVO);
         
         return "/group/yu_study_list";
      }
   //계명대 스터디 리스트
   @RequestMapping(value={"/group/kmu_study_list.do"})
   public String kmu_study_list(Model model, StudyVO searchVO)  throws Exception{
        
        System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
        
        //페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
        PaginationInfo paginationInfo = new PaginationInfo();
        paginationInfo.setCurrentPageNo(searchVO.getPageIndex());   //현재 페이지
        paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());   //한페이당 몇개표시 할건가
        paginationInfo.setPageSize(searchVO.getPageSize());
        
        searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
        searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
        searchVO.setPageSize(paginationInfo.getPageSize());
        
        int recordCount = commonService.selectListTotCnt(searchVO, null, null, "studyDAO.selectStudyListCnt");
        paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
        
        
        List<StudyVO> studyVOList = (List<StudyVO>)commonService.selectList(searchVO, null, null, "studyDAO.selectKMUStudyList");
        
        model.addAttribute("studyVOList", studyVOList);
        model.addAttribute("paginationInfo", paginationInfo);
        model.addAttribute("searchVO", searchVO);
        
        return "/group/kmu_study_list";
     }
   
   //연합 스터디 목록
   @RequestMapping(value={"/group/union_study_list.do"})
   public String union_study_list(Model model, StudyVO searchVO)  throws Exception{
        
        System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
        
        //페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
        PaginationInfo paginationInfo = new PaginationInfo();
        paginationInfo.setCurrentPageNo(searchVO.getPageIndex());   //현재 페이지
        paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());   //한페이당 몇개표시 할건가
        paginationInfo.setPageSize(searchVO.getPageSize());
        
        searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
        searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
        searchVO.setPageSize(paginationInfo.getPageSize());
        
        int recordCount = commonService.selectListTotCnt(searchVO, null, null, "studyDAO.selectStudyListCnt");
        paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
        
        
        List<StudyVO> studyVOList = (List<StudyVO>)commonService.selectList(searchVO, null, null, "studyDAO.selectUNIONStudyList");
        
        model.addAttribute("studyVOList", studyVOList);
        model.addAttribute("paginationInfo", paginationInfo);
        model.addAttribute("searchVO", searchVO);
        
        return "/group/union_study_list";
     }
   
   @RequestMapping(value={"/group/study_view.do"})
    public String study_view(Model model, StudyVO searchVO) throws Exception {
      
      StudyVO studyVO = (StudyVO) commonService.selectView(searchVO, null, null,"studyDAO.selectStudyView");
         
        model.addAttribute("studyVO",studyVO);
         
        List<Study_ReplyVO> study_replyVOList = (List<Study_ReplyVO>)commonService.selectList(studyVO, null, null, "study_replyDAO.selectReplyList_study");
 		commonService.update(studyVO, null, null, "studyDAO.updateStudyHit");
 		model.addAttribute("study_replyVOList", study_replyVOList);
         
         return "/group/study_view";
         
      }
   
   //경북대 리스트만 보이게 함
   @RequestMapping(value={"/group/knu_study_view.do"})
   public String knu_study_view(Model model, StudyVO searchVO) throws Exception {
     
     StudyVO studyVO = (StudyVO) commonService.selectView(searchVO, null, null,"studyDAO.selectKNUStudyView");
        
        model.addAttribute("studyVO",studyVO);
        
        return "/group/study_view";
        
     }
   //경북대 리스트만 보이게 함
   @RequestMapping(value={"/group/yu_study_view.do"})
   public String yu_study_view(Model model, StudyVO searchVO) throws Exception {
     
     StudyVO studyVO = (StudyVO) commonService.selectView(searchVO, null, null,"studyDAO.selectYUStudyView");
        
        model.addAttribute("studyVO",studyVO);
        
        return "/group/study_view";
        
     }
   //경북대 리스트만 보이게 함
   @RequestMapping(value={"/group/kmu_study_view.do"})
   public String kmu_study_view(Model model, StudyVO searchVO) throws Exception {
     
     StudyVO studyVO = (StudyVO) commonService.selectView(searchVO, null, null,"studyDAO.selectKMUStudyView");
        
        model.addAttribute("studyVO",studyVO);
        
        return "/group/study_view";
        
     }
   
   
   @RequestMapping(value={"/group/study_write.do"})
   public String group_write(Model model) {
      
      model.addAttribute("mode", "write");
      
      return "/group/study_write";
   }
   
     @RequestMapping("/group/study_write_action.do")
      public String study_write_action(StudyVO StudyVO, HttpSession session,String mode,RedirectAttributes redirectAttributes,MultipartFile uploadFile) throws Exception{
         
         System.out.println("subject = " + StudyVO.getSubject());
         System.out.println("contents = " +StudyVO.getContents());
         
         MemberVO loginVO = (MemberVO) session.getAttribute("login"); //MemberVO를 import 해주고 seseion으로부터 로그인 했는지 받아오고, MemberVO로 캐스팅
         
         
         if(loginVO==null) {
            //로그인이 안되었을때 어떻게 처리할것인가? 
            redirectAttributes.addFlashAttribute("msg", "로그인이 필요합니다."); //로그인이 필요하다는 msg 출력 후 
            
             return "redirect:/member/login.do"; //로그인 화면으로 return 
            
         }
         
         StudyVO.setWriter(loginVO.getName());//지금 로그인한 사람의 ID는 session에서 가져온다.
         
        String filename = FileUtil.saveFile(uploadFile,STUDY_UPLOAD_PATH);
       
        if(filename != null) {
           //DB 테이블에 저장해야하기 때문에 study 테이블 DB 변경해야함 
           //filename은 uuid가 붙은 id임 DB에 filename과 oriFilename 추가하고 DB에 insert
           //NoticeVO에 추가하기 filename과 oriFilenmae 추가 
           
          StudyVO.setFilename(filename); //파일이름을 저장하고 -> 이렇게 한다음 SQL 작업

          //arr[] =filename.split("_")
          //arr[0]="16f5ec-c848-4a15-9n95-46423321e"
          //arr[1]="dog.jpg"
          String oriFilename= filename.split("_")[1]; //배열로 넘어오는데 원래 파일이름은 _로 나눠진거에 첫번쨰 
          StudyVO.setOriFilename(oriFilename);
        }
        
         
         //mode : write, modify
         if("write".equals(mode)) {
            commonService.insert(StudyVO, null, null,"studyDAO.insertStudy");
         
         }else {
            commonService.update(StudyVO,null,null,"studyDAO.updateStudy");
         }
         
         System.out.println(StudyVO.getUniversity());
         
         if(StudyVO.getUniversity().equals("경북대")) {
        	 return "redirect:/group/knu_study_list.do"; //redirect 갱신해야하니까
         } else if(StudyVO.getUniversity().equals("영남대")) {
        	 return "redirect:/group/yu_study_list.do";//redirect 갱신해야하니까
         } else if(StudyVO.getUniversity().equals("계명대")) {
        	 return "redirect:/group/kmu_study_list.do";//redirect 갱신해야하니까 
         } else {
        	 return "redirect:/group/union_study_list.do";
         }//redirect 갱신해야하니까            
      }

      
      
      @RequestMapping("/group/study_modify.do")
      public String study_modify(Model model, StudyVO searchVO) throws Exception{
         
         StudyVO studyVO = (StudyVO) commonService.selectView(searchVO,null,null,"studyDAO.selectStudyView");
         
         System.out.println("subject = " + studyVO.getSubject());
         System.out.println("contents = " + studyVO.getContents());
         
         model.addAttribute("studyVO",studyVO); //수정할때 화면에 보여주고
         model.addAttribute("mode","modify"); //mode를 modify로 설정
         
         
         return "/group/study_write"; 
      }
      
      
      @RequestMapping("/group/study_delete.do") //삭제 처리 하는 함수 
      public String study_delete(StudyVO StudyVO) throws Exception{
         
         System.out.println("seq = " +StudyVO.getSeq()); // 여기까지는 실제 삭제는 아니고 log로  seq 번호만 출력하게함 
         
         commonService.delete(StudyVO, null, null,"studyDAO.deleteStudy"); //delete니까 특별히 return 값은 없음 
        // 콘트롤러에서 선언 후 - > DB SQL 작성 delete
         
         return "redirect:/group/study_list.do";//view 반환
      }
      
      
      //NoticeController에서 첨부파일 코드 상단에 선언하기 , 파일 업로드 선언, 강사님이 올려준 유틸리티를 복사 해야함 
      //private static final String NOTICE_UPLOAD_PATH=EgovProperties.getProperty("Globals.fileStorePath") + "study";
      //패키지 생성 hustar.util.안에 강사님이 올려준 FileUtil.java 붙여넣기 파일 첨부하는거는 notice_write.do에서 처리
      
      //study_view에서 파일 다운로드
      @RequestMapping("/group/study_downloadFile.do")
      public void study_downloadFile(StudyVO searchVO, HttpServletRequest request, HttpServletResponse response) throws Exception{
         //DB에서 실제 파일 이름을 가져와야함
         StudyVO StudyVO = (StudyVO) commonService.selectView(searchVO, null, null,"studyDAO.selectStudyView"); 
         //캐스팅을 noticeVO로 함
         
         //예외처리 파일이름 없는 seq 처리는 어떻게 할까요? 있는지 없는지 검사 먼저함 
         String filename = StudyVO.getFilename();
         
         if(filename==null) {
            
            return; //파일이 없을때 그냥 return 을 해줌
         }
         String filePath= STUDY_UPLOAD_PATH + "/" +StudyVO.getFilename(); //경로에 있는 폴더에 있는 저장되어있는 파일의 경로를 받아옴 
         
         FileUtil.downFile(request, response, filePath, StudyVO.getOriFilename()); //요청, 응답, 파일경로, 원래 파일 이름을 받아옴
         
        
      }
      
      
      @RequestMapping("/group/study_deleteFile.do")
      public ModelAndView study_deleteFile(StudyVO searchVO, Model model) throws Exception{
         //json으로 처리 
         StudyVO fileVO= (StudyVO) commonService.selectView(searchVO, null, null,"studyDAO.selectStudyView");
         
         String filePath = STUDY_UPLOAD_PATH + "/" +fileVO.getOriFilename(); //파일의 경로 + 이름을 얻어와서 
         if(FileUtil.deleteFile(filePath)== true) {
            
            StudyVO StudyVO = new StudyVO(); //새로 선언
            StudyVO.setSeq(searchVO.getSeq());//파일을 없애줘야하니까.
            StudyVO.setFilename(""); // 공백으로 처리 
            StudyVO.setOriFilename(""); //공백으로 처리 
            commonService.update(StudyVO, null, null, "studyDAO.updateStudy");
            
            model.addAttribute("success","true");
            
            
         }else{
            model.addAttribute("success","false");
            
            
         } //deleteFile은 true, false로 반환 
      return null;
         
      }
      
      //이미지 보기
      @RequestMapping("/group/study_image.do")
      public void gallery_iamge(
            StudyVO searchVO,
            HttpServletResponse response) throws Exception{
      //view가 필요없기 때문에 반환형 void로 
         
         StudyVO galleryVO= (StudyVO) commonService.selectView(searchVO, null, null,"studyDAO.selectStudyView");
        
        FileUtil.displayImage(response,STUDY_UPLOAD_PATH,galleryVO.getFilename());
         
      }
      
  	@RequestMapping(value={"/group/study_reply_insert.do"})
  	public String Study_Reply_insert(StudyVO studyVO,Study_ReplyVO study_replyVO, Model model,HttpSession session, RedirectAttributes redirectAttributes) throws Exception {
  		
  		MemberVO loginVO = (MemberVO)session.getAttribute("login");
  		
  		if(loginVO==null) {
            //로그인이 안되었을때 어떻게 처리할것인가? 
            redirectAttributes.addFlashAttribute("msg", "로그인이 필요합니다."); //로그인이 필요하다는 msg 출력 후 
            return "redirect:/member/login.do"; //로그인 화면으로 return 
  		}
  		study_replyVO.setStudy_id(studyVO.getSeq());
  		study_replyVO.setName(loginVO.getName());
  		
  		commonService.insert(study_replyVO, null, null, "study_replyDAO.insertReply");
  		
  		return "redirect:/group/study_view.do?seq="+studyVO.getSeq();
  	}
      
}
