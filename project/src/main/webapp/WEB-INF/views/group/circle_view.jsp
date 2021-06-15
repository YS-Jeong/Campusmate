<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<body>

<!--콘텐츠 시작-->
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>


<div class="notice-wrap">
	<div class="notice-box">
		<div class="bbs-view">
		<%@ include file="/WEB-INF/views/inc/submenu.jsp" %>

			<div class="view-hd">
				<span><c:out value='${circleVO.date}' /></span>
				<h2><c:out value='${circleVO.subject}' /></h2>
				<p>작성자 : <b><c:out value='${circleVO.writer}' /></b></p>
			</div>

			<div class="view-cont">
				<pre><c:out value='${circleVO.contents}' /></pre>
			</div>
			
			<c:if test="${not empty circleVO.oriFilename}">
				<div class="view-file">
					<a href="<c:url value='/group/circle_downloadFile.do' />?seq=${circleVO.seq}"><i class="fa fa-download" aria-hidden="true"></i>${circleVO.oriFilename}</a>
					<!--<a href="#none"><i class="fa fa-download" aria-hidden="true"></i>  첨부파일 다운로드.jpg</a>-->
				</div>
			</c:if>
		</div>

		<div class="table-btn">
			<div>
				<a href="<c:url value='/group/circle_list.do'/>" class="lis">목록</a>
				<a href="#none" onclick="javascript:confirmDelete();">삭제</a>
				<a href="<c:url value='/group/circle_modify.do'/>?seq=${circleVO.seq}">수정</a>
			</div>
		</div>

	</div>

</div>

<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

<!--콘텐츠 끝-->
<script>
function confirmDelete(){
	
	if(confirm('삭제하시겠습니까?') == true){
		location.href = '<c:url value="/group/circle_delete.do"/>?seq=${circleVO.seq}';
	}
	
}
</script>

</body>
</html>