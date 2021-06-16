<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<body>
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
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>