<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/inc/header_test.jsp" %>
<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<body>
<!--콘텐츠 시작-->
<%@ include file="/WEB-INF/views/inc/login.jsp" %>
<%@ include file="/WEB-INF/views/inc/submenu.jsp" %>

<form method="post" name="frm" action="<c:url value='/group/circle_write_action.do'/>" enctype="multipart/form-data">
<c:if test = "${mode =='modify'}">
	<input type="hidden" name="seq" value="${circleVO.seq}">
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
						<li>
							<label for="">제목</label>
							<input type="text" name="subject" value="<c:out value='${circleVO.subject}' />" placeholder="제목을 입력해 주세요.">
						</li>
	
						<li>
							<label for="">내용</label>
							<textarea name="contents" id="" placeholder="내용을 입력하는 부분입니다."><c:out value='${circleVO.contents}' /></textarea>
						</li>		
						<c:if test="${empty circleVO.filename}">
							<li>
	                  			<label for="">첨부파일 #01</label>
	                 			<input type="file" name ="uploadFile"> <!-- 첨부파일 이름을 줌 -->
	               			</li>
	               		</c:if>	
               			<c:if test="${not empty circleVO.filename}">
               				<li>
               					<label for="">${circleVO.oriFilename} <a href="#" onclick="javascript:confirmDeleteFile();">[삭제]</a></label>
               				</li>
               			</c:if>
						<!-- 
						<li>
							<label for="">첨부파일 #02</label>
							<input type="file">
						</li>
						 -->
						<li class="checkbox-wrap">
							<label for="">공지선택</label>
							<input type="checkbox" id="chk-notice"><label for="chk-notice">선택시 공지사항</label>
						</li>
					</ul>
				</div>
			</div>
	
	
			<div class="table-btn">
				<div>
					<a href="<c:url value='/group/circle_list.do'/>">이전</a>
					<a href="#" onclick="javascript:document.frm.submit();">완료</a>
				</div>
			</div>
	
		</div>
	
	</div>
</form>

<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

<!--콘텐츠 끝-->

<script>
function confirmDeleteFile(){
	if(confirm('삭제하시겠습니까?') == true){
		$.ajax({
			type:'POST',
			url: '<c:url value="/group/circle_deleteFile.do"/>',
			dataType: 'JSON',
			data: ("seq" : ${circleVO.seq}),
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