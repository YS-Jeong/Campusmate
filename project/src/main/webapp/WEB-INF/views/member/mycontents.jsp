<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<style>
.join-box {
    max-width: 1500px;
}
.join-box .join-form {
    max-width: 1500px;
}
.join-wrap .join-box p{
	text-align:center;
	color:#f88c60;
   	font-weight: 600;
	
}
.join-box .join-form ul li a {
    display: inline-block;
    background: #fff;
    color: #343a40;
    margin: 1px 0px;
    padding: 2px 0px;
    border-radius: 5px;
    transition: all 0.3s;
    width:auto;

</style>

<body>
<div class="join-wrap">

	<div class= "join-box">
			<p>내가 작성한 글</p>
			<br>
		<div class=join-form>
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
								<div class="no"><c:out value="${circleVO.seq}"/></div>
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
		<br></br><br></br>
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
								<div class="no"><c:out value="${studyVO.seq}"/></div>
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
			<br>
			<li class="join-btn">
	    	<a href="<c:url value='/member/mypage.do'/>">뒤로가기</a>			
			</li>
		</div>
	</div>
</div>		
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>