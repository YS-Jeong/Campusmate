<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/inc/header_test.jsp" %>
<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<body>

<%@ include file="/WEB-INF/views/inc/login.jsp" %>

<div><a>경북대 스터디 리스트</a></div>
 
 <div class="snb-wrap">
	<div>
		<ul>
			<li><a href="<c:url value='/group/circle_list.do'/>"><span>동아리게시판</span></a></li>
			<li class="on"><a href="<c:url value='/group/study_list.do'/>"><span>스터디게시판</span></a></li>
		</ul>		
	</div>
</div>


<form method="get" name="frm" action="<c:url value='/group/study_list.do'/>">

<div class="notice-wrap">
	<div class="notice-box">

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
				</li>
			</ul>
			
			<c:forEach var="studyVO" items="${studyVOList}" varStatus="status">
				<ul class="tb-bd">
					<li>
						<div class="no">
							<c:out value="${paginationInfo.totalRecordCount - ((paginationInfo.currentPageNo-1) * paginationInfo.recordCountPerPage + status.index)}"/>
						</div>
						<div class="uni"><c:out value="${studyVO.university}"/></div>
						<div class="subject"><a href="<c:url value='/group/study_view.do'/>?seq=${studyVO.seq}"><c:out value="${studyVO.subject}"/></a></div>
						<div class="name"><c:out value="${studyVO.writer}"/></div>
						<div class="date"><c:out value="${studyVO.date}"/></div>
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
				<a href="<c:url value='/group/study_write.do'/>">글쓰기</a>
			</div>
		</div>

	</div>

</div>

</form>

<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
<!--콘텐츠 끝 -->
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</body>
<script>
  AOS.init();
</script>


<script>
	function fn_requestList(pageNo){
		console.log(pageNo);
		document.frm.pageIndex.value=pageNo;
		document.frm.submit();
	}
</script>
</html>
