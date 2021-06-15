<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<body>

<%@ include file="/WEB-INF/views/inc/menu.jsp" %>

<form method="get" name="frm" action="<c:url value='/group/circle_list.do'/>" entype="multipart/form-data">
	<div class="notice-wrap">
		<div class="notice-box">
			<%@ include file="/WEB-INF/views/inc/submenu.jsp" %>
			<div class="table-hd">
				<div>
					<input type="text" name="searchKeyword" value="${searchVO.searchKeyword}">
					<button onclick="javascript:fn_requestList(1);">검색</button>
	
				</div>
			</div>
	
			<div class="table-list">
				<ul class="tb-hd">
					<li>
						<div class="no">번호</div>
						<div class="uni">대학교</div>
						<div class="subject">제목</div>
						<div class="name">글쓴이</div>
						<div class="date">등록일</div>
						<div class="hit">조회수</div>
					</li>
				</ul>
				
				<c:forEach var="circleVO" items="${circleVOList}" varStatus="status">
					<ul class="tb-bd">
						<li>
							<div class="no">
								<c:out value="${paginationInfo.totalRecordCount - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + status.index)}"/>
							</div>
							<div class="uni"><c:out value="${circleVO.university}"/></div>
							<div class="subject"><a href="<c:url value='/group/circle_view.do'/>?seq=${circleVO.seq}"><c:out value="${circleVO.subject}"/></a></div>
							<div class="name"><c:out value="${circleVO.writer}"/></div>
							<div class="date"><c:out value="${circleVO.date}"/></div>
							<div class="hit"><c:out value="${circleVO.hit}"/></div>
						</li>
					</ul>
				</c:forEach>
					
			</div>
			
			<div class="paging">
				<div>
					<ul>
						<ui:pagination paginationInfo="${paginationInfo}" type="myImage" jsFunction="fn_requestList"/>
						<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>
					</ul>
				</div>
			</div>
			
			
			
			<div class="table-btn">
				<div>
					<a href="<c:url value='/group/circle_write.do'/>">글쓰기</a>
				</div>
			</div>
	
		</div>
	
	</div>
</form>

<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

<script>
function fn_requestList(pageNo){
	console.log(pageNo);
	document.frm.pageIndex.value = pageNo;
	document.frm.submit();
}

</script>

</body>
</html>
