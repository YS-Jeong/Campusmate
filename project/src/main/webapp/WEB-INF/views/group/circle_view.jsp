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
		
		
		<div class="table-list">
			<ul class="tb-hd">
					<li>
						<div class="id">ID</div>
						<div class="name">작성자</div>
						<div class="content">내용</div>
						<div class="date">등록일</div>
					</li>
			</ul>
			<c:forEach var="circle_replyVO" items="${circle_replyVOList}" varStatus="status">
				<ul class="tb-bd">
					<li>
						<div class="id"><c:out value="${circle_replyVO.id}"/></div>
						<div class="name"><c:out value="${circle_replyVO.name}"/></div>
						<div class="content"><c:out value="${circle_replyVO.content}"/></div>
						<div class="date"><c:out value="${circle_replyVO.regdate}"/></div>
					</li>
				</ul>
			</c:forEach>
		</div>
		<form method="post" action="<c:url value = "/group/circle_reply_insert.do"/>?seq=${circleVO.seq}">
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

<!--콘텐츠 끝-->
<script>
function confirmDelete(){
	
	if(confirm('삭제하시겠습니까?') == true){
		location.href = '<c:url value="/group/circle_delete.do"/>?seq=${circleVO.seq}';
	}
	
}

function commentWrite(){
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