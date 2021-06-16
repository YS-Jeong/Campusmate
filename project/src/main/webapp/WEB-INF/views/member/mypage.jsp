<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>

<body>

<%@ include file="/WEB-INF/views/inc/menu.jsp" %>

<!-- contents 시작 -->
<div class="join-wrap">

	<div class= "join-box">

		<h1>Mypage</h1>

		<div class ="join-form">
		<c:set var="session" value="${sessionScope.login}" scope="application"/>
			<ul>
				<li>
					<label for="">학번</label>
					<h>${session.st_id}</h>
				</li>
				<li>
					<label for="">이름</label>
					<h>${session.name}</h>
				</li>
				<li>
					<label for="">전화번호</label>
					<h>${session.phone}</h>
				</li>
				<li>
					<label for="">생일</label>
					<h>${session.birth}</h>
				</li>
				<li>
					<label for="">성별</label>
					<h>${session.gender}</h>
				</li>
				<li>
					<label for="">학교</label>
					<h>${session.school}</h>
				</li>
				<li>

					<select name="school">
						<c:if test="${session.school eq '경북대'}">
							<option value="">학교를 선택해주세요.</option>
							<option value="경북대" selected>경북대학교</option>
							<option value="영남대">영남대학교</option>
							<option value="계명대">계명대학교</option>
						</c:if>
						<c:if test="${session.school eq '영남대'}">
							<option value="">학교를 선택해주세요.</option>
							<option value="경북대">경북대학교</option>
							<option value="영남대" selected>영남대학교</option>
							<option value="계명대">계명대학교</option>
						</c:if>
						<c:if test="${session.school eq '계명대'}">
							<option value="">학교를 선택해주세요.</option>
							<option value="경북대">경북대학교</option>
							<option value="영남대">영남대학교</option>
							<option value="계명대" selected>계명대학교</option>
						</c:if>
					</select>
					

					<label for="">학과</label>

					<h>${session.depart}</h>
				</li>
				
				<li>
					<a href="<c:url value='/member/mycontents.do'/>">작성글 관리</a>				
					<select name="depart">
						<c:if test="${session.depart eq '기계공학과'}">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과" selected>기계공학과</option>
							<option value="정보통신공학과">정보통신공학과</option>
							<option value="컴퓨터공학과">컴퓨터공학과</option>
							<option value="전자공학과">전자공학과</option>
							<option value="경영학과">경영학과</option>
							<option value="경제학과">경제학과</option>
						</c:if>
						<c:if test="${session.depart eq '정보통신공학과'}">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과">기계공학과</option>
							<option value="정보통신공학과" selected>정보통신공학과</option>
							<option value="컴퓨터공학과">컴퓨터공학과</option>
							<option value="전자공학과">전자공학과</option>
							<option value="경영학과">경영학과</option>
							<option value="경제학과">경제학과</option>
						</c:if>
						<c:if test="${session.depart eq '컴퓨터공학과'}">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과">기계공학과</option>
							<option value="정보통신공학과">정보통신공학과</option>
							<option value="컴퓨터공학과" selected>컴퓨터공학과</option>
							<option value="전자공학과">전자공학과</option>
							<option value="경영학과">경영학과</option>
							<option value="경제학과">경제학과</option>
						</c:if>
						<c:if test="${session.depart eq '전자공학과'}">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과">기계공학과</option>
							<option value="정보통신공학과">정보통신공학과</option>
							<option value="컴퓨터공학과">컴퓨터공학과</option>
							<option value="전자공학과" selected>전자공학과</option>
							<option value="경영학과">경영학과</option>
							<option value="경제학과">경제학과</option>
						</c:if>
						<c:if test="${session.depart eq '경영학과'}">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과">기계공학과</option>
							<option value="정보통신공학과">정보통신공학과</option>
							<option value="컴퓨터공학과">컴퓨터공학과</option>
							<option value="전자공학과">전자공학과</option>
							<option value="경영학과" selected>경영학과</option>
							<option value="경제학과">경제학과</option>
						</c:if>
						<c:if test="${session.depart eq '경제학과'}">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과">기계공학과</option>
							<option value="정보통신공학과">정보통신공학과</option>
							<option value="컴퓨터공학과">컴퓨터공학과</option>
							<option value="전자공학과">전자공학과</option>
							<option value="경영학과">경영학과</option>
							<option value="경제학과" selected>경제학과</option>
						</c:if>																													
					</select>

				</li>

				<li class="join-btn">
	    		
				<!-- 가입완료 버튼 눌렀을 때 submitForm()함수 실행  -->
	    		<a href="<c:url value='/member/modify.do'/>">회원정보 수정하기</a>
	    		</li>
			</ul>
		</div>
	</div>

</div>
<!-- contents 끝 -->

<script>

</script>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>