<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<body>

<p>내가 작성한 게시글</p>

		<div class="circle-list">
			<p>동아리 게시판</p>
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
			
			<c:forEach var="circleVO" items="${circleVOList}" varStatus="status">
				<ul class="tb-bd">
					<li>
						<c:set var="session" value="${sessionScope.login}" scope="application"/>
							<c:if test = "${session.st_id == circleVO.st_id}">
								<div class="no"></div>
								<div class="uni"><c:out value="${circleVO.university}"/></div>
								<div class="subject"><a href="<c:url value='/group/circle_view.do'/>?seq=${circleVO.seq}"><c:out value="${circleVO.subject}"/></a></div>
								<div class="name"><c:out value="${circleVO.writer}"/></div>
								<div class="date"><c:out value="${circleVO.date}"/></div>
							</c:if>
							<c:if test = "${session.st_id != circleVO.st_id}">
							</c:if>
					</li>
				</ul>
			</c:forEach>		
		</div>
		
		<div class="study-list">
			<p>스터디 게시판</p>
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
						<c:set var="session" value="${sessionScope.login}" scope="application"/>
							<c:if test = "${session.st_id == studyVO.st_id}">
								<div class="no"></div>
								<div class="uni"><c:out value="${studyVO.university}"/></div>
								<div class="subject"><a href="<c:url value='/group/study_view.do'/>?seq=${studyVO.seq}"><c:out value="${studyVO.subject}"/></a></div>
								<div class="name"><c:out value="${studyVO.writer}"/></div>
								<div class="date"><c:out value="${studyVO.date}"/></div>
							</c:if>
							<c:if test = "${session.st_id != studyVO.st_id}">
							</c:if>
					</li>
				</ul>
			</c:forEach>		
		</div>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>