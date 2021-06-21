<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@ include file="/WEB-INF/views/inc/header.jsp" %>

<body>
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>



<form method="post" name="frm" action="<c:url value='/group/study_write_action.do'/>" enctype="multipart/form-data">
<c:if test = "${mode == 'modify'}">
	<input type="hidden" name="seq" value="${studyVO.seq}">
</c:if>
<input type="hidden" name="mode" value="${mode}">


	<div class="notice-wrap">
		<div class="notice-box">
			
	
			<div class="bbs-write">
				<div>
					<ul>
						<li>
							<label for="">대학교</label>
							<select name="university">
							<option value=''>----선택----</option>
							<option value='경북대'>경북대</option>
							<option value='영남대'>영남대</option>
							<option value='계명대'>계명대</option>
							<option value='연합'>연합</option>
							</select>
						<li>
							<label for="">제목</label>
							<input type="text" name="subject" value="<c:out value='${studyVO.subject}' />" placeholder="제목을 입력해 주세요.">
						</li>
	
						<li>
							<label for="">내용</label>
							<textarea name="contents" id="" placeholder="내용을 입력하는 부분입니다."><c:out value='${studyVO.contents}' /></textarea>
						</li>		
						<c:if test="${empty studyVO.filename}">
							<li>
	                  			<label for="">첨부파일 #01</label>
	                 			<input type="file" name ="uploadFile"> <!-- 첨부파일 이름을 줌 //commit test-->
	               			</li>
	               		</c:if>	
               			<c:if test="${not empty studyVO.filename}">
               				<li>
               					<label for="">${studyVO.oriFilename} <a href="#" onclick="javascript:confirmDeleteFile();">[삭제]</a></label>
               				</li>
               			</c:if>
						<!-- 
						<li>
							<label for="">첨부파일 #02</label>
							<input type="file">
						</li>
						 -->
					</ul>
				</div>
			</div>
	
	
			<div class="table-btn">
				<div>
					<a href="<c:url value='/group/study_list.do'/>">이전</a>
					<a href="#" onclick="javascript:document.frm.submit();">완료</a>
				</div>
			</div>
	
		</div>
	
	</div>


</form>


<%@ include file="/WEB-INF/views/inc/footer.jsp" %>



<script>
function confirmDeleteFile(){
	if(confirm('삭제하시겠습니까?') == true){
		$.ajax({
			type:'POST',
			url: '<c:url value="/group/study_deleteFile.do"/>',
			dataType: 'JSON',
			data: {"seq" : ${studyVO.seq}},
			success: function(data){
				if(data.success == true){
					location.reload();
				}else{
					alert('파일 삭제가 실패하였습니다.');
				}
			},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(textStatus);
			}
		});
	}
}
</script>
</body>
</html>