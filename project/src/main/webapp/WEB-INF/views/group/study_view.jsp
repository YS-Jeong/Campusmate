<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>


<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<style>
.comment-reg button{margin: 20px 0;}
.comment-reg div button{border:0; outline:0; float:right; background: #fe8e60; padding: 10px 20px; color: #fff; display: inline-block;}
body > div > div > div.table-list > ul.tb-bd > li > div.button > a.modify{color:#007bff;}
body > div > div > div.table-list > ul.tb-bd > li > div.button {color:red;}
</style>


<body>
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>


<div class="notice-wrap">
<<<<<<< HEAD
	<div class="notice-box">
		<div class="circle-view">
			<div class="view-hd">
				<h2 class="name">스터디게시판</h2>
				<h2 class="subject"><c:out value='${studyVO.subject}' /></h2>
				<h2 class="writer"><c:out value='${studyVO.writer}' /></h2>
				<div class="info">
					<h2 class="date"><c:out value='${studyVO.date}' /></h2>
					<h2 class="hit">조회수<c:out value='${studyVO.hit}'/></h2>
				</div>
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
			<div style="border-bottom: 2px solid #f2f2f2; padding:10px;">
				<c:if test = "${session.name == studyVO.writer}">
					<a href="<c:url value='/group/study_list.do'/>" class="lis">목록</a>
					<a href="#none" onclick="javascript:confirmDelete();">삭제</a>
					<a href="<c:url value='/group/study_modify.do'/>?seq=${studyVO.seq}">수정</a>
				</c:if>
				<c:if test = "${session.name != studyVO.writer}">
					<a href="<c:url value='/group/study_list.do'/>" class="lis">목록</a>
				</c:if>
			</div>
		</div>
		
		<div class="reply-list">
			<c:forEach var="study_replyVO" items="${study_replyVOList}" varStatus="status">
				<ul class="tb-reply-bd">
					<li>
						<div class="name"><c:out value="${study_replyVO.name}"/></div>
						<div class="content"><c:out value="${study_replyVO.content}"/></div>
						<div class="date"><c:out value="${study_replyVO.regdate}"/></div>
					</li>
				</ul>
			</c:forEach>
		</div>
		<br><br>
		<form method="post" action="<c:url value = "/group/study_reply_insert.do"/>?seq=${studyVO.seq}">
		<div class="comment-reg">
			<p>
				<div class = "comment-inbox-name">작성자: <c:out value="${session.name}"/></div>
				<textarea class="comment" name = "content" rows="5" colos="50" placeholder="불건전한 내용, 광고성, 타인 비하 등 운영 원칙에 위배되는 댓글은 삭제될 수 있습니다."></textarea>
			</p>
			<p>
			<div class="button">
				<button>댓글작성</button>
			</div>
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
<script>
function replyDelete(){
   
   if(confirm('댓글을 삭제하시겠습니까?') == true){
      location.href = '<c:url value="/group/study_reply_delete.do"/>?seq=${studyVO.seq}';
   }
   
}

</script>


</body>
</html>