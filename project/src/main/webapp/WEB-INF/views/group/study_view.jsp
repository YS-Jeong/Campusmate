<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>

<body>
 <div class="snb-wrap">
<<<<<<< HEAD
	<div>
		<ul>
			<li><a href="<c:url value='/group/circle_list.do'/>"><span>동아리게시판</span></a></li>
			<li class="on"><a href="<c:url value='/group/study_list.do'/>"><span>스터디게시판</span></a></li>
		</ul>		
	</div>
</div>

<div class="notice-wrap">
	<div class="notice-box">
		<div class="bbs-view">

			<div class="view-hd">
				<span><c:out value='${studyVO.date}' /></span>
				<h2><c:out value='${studyVO.subject}' /></h2>
				<p>작성자 : <b><c:out value='${studyVO.writer}' /></b></p>
			</div>

			<div class="view-cont">
				<div class="view-thum">
					<img src="<c:url value='/group/study_image.do'/>?seq=${studyVO.seq}">
				</div>
				<pre><c:out value='${studyVO.contents}' /></pre>
			</div>

			<c:if test="${not empty studyVO.oriFilename}"> 
			<!-- c:url 이 controller로 요청하는거임 ,gou.seq를 넘겨주면-->
			<div class="view-file">
				<a href="<c:url value='/group/study_downloadFile.do'/>?seq=${studyVO.seq}"><i class="fa fa-download" aria-hidden="true"></i>
				${studyVO.oriFilename}</a>
			</div>
			</c:if> 
			
		</div>

		<div class="table-btn">
			<div>
				<a href="<c:url value='/group/study_list.do'/>" class="lis">목록</a>
				<a href="#none" onclick="javascript:confirmDelete();">삭제</a>
				<a href="<c:url value='/group/study_modify.do'/>?seq=${studyVO.seq}">수정</a>
			</div>
		</div>

	</div>

</div>

<%@ include file="/WEB-INF/views/inc/footer.jsp" %>




<script>
function confirmDelete(){
	
	if(confirm('삭제하시겠습니까?') == true){
		location.href = '<c:url value="/group/study_delete.do"/>?seq=${studyVO.seq}';
	}
	
}
</script>

</body>

</html>
=======
   <div>
      <ul>
         <li><a href="<c:url value='/group/circle_list.do'/>"><span>동아리게시판</span></a></li>
         <li class="on"><a href="<c:url value='/group/study_list.do'/>"><span>스터디게시판</span></a></li>
      </ul>      
   </div>
</div>

<div class="notice-wrap">
   <div class="notice-box">
      <div class="bbs-view">

         <div class="view-hd">
            <span><c:out value='${studyVO.date}' /></span>
            <h2><c:out value='${studyVO.subject}' /></h2>
            <p>작성자 : <b><c:out value='${studyVO.writer}' /></b></p>
         </div>

         <div class="view-cont">
         <div class="view-thum">
               <img src="<c:url value='/group/study_image.do'/>?seq=${studyVO.seq}">
            </div>
            <pre><c:out value='${studyVO.contents}' /></pre>
         </div>

         <c:if test="${not empty studyVO.oriFilename}"> 
         <!-- c:url 이 controller로 요청하는거임 ,group.seq를 넘겨주면-->
         <div class="view-file">
            <a href="<c:url value='/group/study_downloadFile.do'/>?seq=${studyVO.seq}"><i class="fa fa-download" aria-hidden="true"></i>
            ${studyVO.oriFilename}</a>
         </div>
         </c:if> 
         
      </div>

      <div class="table-btn">
         <div>
            <a href="<c:url value='/group/study_list.do'/>" class="lis">목록</a>
            <a href="#none" onclick="javascript:confirmDelete();">삭제</a>
            <a href="<c:url value='/group/study_modify.do'/>?seq=${studyVO.seq}">수정</a>
         </div>
      </div>

   </div>

</div>

<%@ include file="/WEB-INF/views/inc/footer.jsp" %>




<script>
function confirmDelete(){
   
   if(confirm('삭제하시겠습니까?') == true){
      location.href = '<c:url value="/group/study_delete.do"/>?seq=${studyVO.seq}';
   }
   
}
</script>

</body>

</html>
>>>>>>> branch 'master' of https://github.com/YS-Jeong/Campusmate.git
