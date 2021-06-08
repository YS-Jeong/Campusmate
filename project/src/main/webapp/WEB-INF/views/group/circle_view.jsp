<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>
<body>

<div class="snb-wrap">
  <div>
    <ul>
			<li class="on"><a href="<c:url value='/group/circle_list.do'/>"><span>동아리게시판</span></a></li>
			<li class=""><a href="<c:url value='/group/study_list.do'/>"><span>스터디게시판</span></a></li>
    </ul>
  </div>
</div>

<div class="notice-wrap">
	<div class="notice-box">
		<div class="bbs-view">

			<div class="view-hd">
				<span>등록일 : 2021-04-27</span>
				<h2>동아리게시판내용 입니다. 열심히 하겠습니다!</h2>
				<p>작성자 : <b>관리자</b></p>
			</div>

			<div class="view-cont">
				<p>동아리게시판 작성 후 출력 되는 페이지 입니다.</p>
				<p>동아리게시판 작성은 textarea로 작성이 되었습니다.</p>
			</div>

			<div class="view-file">
				<a href="#none"><i class="fa fa-download" aria-hidden="true"></i>  첨부파일 다운로드.jpg</a>
				<a href="#none"><i class="fa fa-download" aria-hidden="true"></i>  첨부파일 다운로드.jpg</a>
			</div>
		</div>

		<div class="table-btn">
			<div>
				<a href="<c:url value='/bbs/free_list.do'/>" class="lis">목록</a>
				<a href="#none" class="del">삭제</a>
				<a href="#none" class="mod">수정</a>
			</div>
		</div>

	</div>

</div>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>