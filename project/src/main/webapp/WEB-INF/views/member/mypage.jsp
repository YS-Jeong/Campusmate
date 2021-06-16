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

		<h1>회원정보수정</h1>

		<c:set var="session" value="${sessionScope.login}" scope="application"/>
		<form method="post" name="frm" action="<c:url value='/member/updateInsert.do'/>">
		<div class ="join-form">
			<ul>
				<li>
					<label for="">학번</label>
					<input type="text" name="st_id" placeholder="학번" value="${session.st_id}" readonly>
				</li>
				<li>
					<label for="">비밀번호</label>
					<input type="password" name="password" placeholder="비밀번호" value="">
				</li>
				<li>
					<label for="">비밀번호 확인</label>
					<input type="password" placeholder="비밀번호확인">
				</li>
				<li>
					<label for="">이름</label>
					<input type="text" name="name" placeholder="이름" value="${session.name}">
				</li>
				<li>
					<label for="">전화번호</label>
					<input type="text" name="phone" placeholder="전화번호" value="${session.phone}">
				</li>
				<li>
					<label for="">생년월일</label>
					<input type="text" name="birth" placeholder="생년월일(6자리)" value="${session.birth}">
				</li>
				<li class="gender">
					<label for="">성별</label>
					<c:if test="${session.gender eq '남자'}">
					<span>
						<label for="">남</label>
						<input type="radio" name="gender" value="남자" checked/>
					</span>
					<span>
						<label for="checked">여</label>
						<input type="radio" name="gender" value="여자"/>
					</span>
					</c:if>
					<c:if test="${session.gender eq '여자'}">
					<span>
						<label for="">남</label>
						<input type="radio" name="gender" value="남자"/>
					</span>
					<span>
						<label for="checked">여</label>
						<input type="radio" name="gender" value="여자" checked/>
					</span>
					</c:if>
				</li>
				<li>
					<label for="">학교</label>
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
	    		<a href="#none" onclick="submitForm();">수정완료</a>

	    		</li>

			</ul>

			</div>

		</form>

	</div>

</div>
<!-- contents 끝 -->

<script>
// 입력창 값이 비었을 때 토스트 창 띄우는 기능================================
function submitForm() {
	if (document.frm.st_id.value==""){
		alert('ID를 입력해주세요.');
		document.frm.st_id.focus();
	} else if (document.frm.password.value==""){
		alert('비밀번호를 입력해주세요.');
		document.frm.password.focus();
	} else if (document.frm.name.value==""){
		alert('이름을 입력해주세요.');
		document.frm.name.focus();
	} else if (document.frm.phone.value==""){
		alert('전화번호를 입력해주세요.');
		document.frm.phone.focus();
	} else if (document.frm.birth.value==""){
		alert('생년월일을 입력해주세요.');
		document.frm.birth.focus();
	} else if (document.frm.gender.value==""){
		alert('성별을 선택해주세요.');
		document.frm.gender.focus();
	} else if (document.frm.school.value==""){
		alert('학교를 선택해주세요.');
		document.frm.school.focus();
	} else if (document.frm.depart.value==""){
		alert('학과를 선택해주세요.');
		document.frm.depart.focus();
	} else{
		document.frm.submit();
	}
}

</script>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>