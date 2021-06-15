<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>


<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<body>
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>


<div class="notice-wrap">
	<div class="notice-box">
		<div class="bbs-view">
		<%@ include file="/WEB-INF/views/inc/submenu.jsp" %>

			<div class="view-hd">
				<span><c:out value='${studyVO.date}' /></span>
				<h2><c:out value='${studyVO.subject}' /></h2>
				<p>작성자 : <b><c:out value='${studyVO.writer}' /></b></p>
			</div>

			<div class="view-cont">
				<pre><c:out value='${studyVO.contents}' /></pre>
			</div>

			<c:if test="${not empty studyVO.oriFilename}"> 
				<!-- c:url 이 controller로 요청하는거임 ,gou.seq를 넘겨주면-->
				<div class="view-file">
					<a href="<c:url value='/group/study_downloadFile.do'/>?seq=${studyVO.seq}"><i class="fa fa-download" aria-hidden="true"></i>${studyVO.oriFilename}</a>
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
		
		
		<div class="table-list">
			<ul class="tb-hd">
					<li>
						<div class="id">ID</div>
						<div class="name">작성자</div>
						<div class="content">내용</div>
						<div class="date">등록일</div>
					</li>
			</ul>
			<c:forEach var="study_replyVO" items="${study_replyVOList}" varStatus="status">
				<ul class="tb-bd">
					<li>
						<div class="id"><c:out value="${study_replyVO.id}"/></div>
						<div class="name"><c:out value="${study_replyVO.name}"/></div>
						<div class="content"><c:out value="${study_replyVO.content}"/></div>
						<div class="date"><c:out value="${study_replyVO.regdate}"/></div>
					</li>
				</ul>
			</c:forEach>
		</div>
		<form method="post" action="<c:url value = "/group/study_reply_insert.do"/>?seq=${studyVO.seq}">
		<div class="comment-reg">
			<p>댓글 작성</p>
			<p>
				<textarea name = "content" style="width: 1200px" rows="5" colos="50" placeholder="불건전한 내용, 광고성, 타인 비하 등 운영 원칙에 위배되는 댓글은 삭제될 수 있습니다."></textarea>
			</p>
			<p>
				<button>댓글작성</button>
			</p>
		</div>
		</form>
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
