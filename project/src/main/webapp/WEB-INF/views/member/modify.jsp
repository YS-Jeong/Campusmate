<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<body>
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>

<!-- contents 시작 -->
<table class="join-table" border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td style="padding-top:11px" align="center">
		<c:set var="session" value="${sessionScope.login}" scope="application"/>			
		<form method="post" name="frm" action="<c:url value='/member/updateInsert.do'/>">
		<table border="0" cellpadding="0" cellspacing="0" width="992">
			<tr>
				<td class="pdTB830">
					<div class="txtMainContentTB">회원정보 수정</div>
				</td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>학번</td>
				<td class="txtB3 pd15"><input type="text" title="학번" name="st_id" maxlength="15" style="width:200px;" value="${session.st_id}" readonly></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>비밀번호</td>
				<td class="txtB3 pd15"><input type="password" name="password" tabindex="2 style="width:200px;"></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>비밀번호확인</td>
				<td class="txtB3 pd15"><input type="password" name="password_2" tabindex="2" style="width:200px;"></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>이름</td>
				<td class="txtB3 pd15"><input type="text" name="name" maxlength="15" tabindex="2" style="width:200px;" value="${session.name}"></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>전화번호</td>
				<td class="txtB3 pd15"><input type="text" name="phone" maxlength="15" tabindex="2" style="width:200px;" value="${session.phone}"></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>생년월일</td>
				<td class="txtB3 pd15"><input type="text" name="birth" maxlength="15" tabindex="2" style="width:200px;" value="${session.birth}"></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>성별</td>
				<c:if test="${session.gender eq '남자'}">
					<td class="txtB3 pd15">
					<input name="gender" type="radio" value="남자" checked/>남자
					<input name="gender" type="radio" value="여자"/> 여자</td>					
				</c:if>
				<c:if test="${session.gender eq '여자'}">
					<td class="txtB3 pd15">
					<input name="gender" type="radio" value="남자"/>남자
					<input name="gender" type="radio" value="여자" checked/>여자</td>
				</c:if>
			</tr>				
			<tr>
				<td class="txtB2 pd15" width=150>학교</td>
				<c:if test="${session.school eq '경북대'}">				
					<td class="txtB3 pd15">
						<select name="school" class="select">
							<option value="">학교를 선택해주세요.</option>
							<option value="경북대" selected>경북대</option>
							<option value="영남대">영남대</option>
							<option value="계명대">계명대</option>
						</select>
					</td>
				</c:if>
				<c:if test="${session.school eq '영남대'}">				
					<td class="txtB3 pd15">
						<select name="school" class="select">
							<option value="">학교를 선택해주세요.</option>
							<option value="경북대">경북대</option>
							<option value="영남대" selected>영남대</option>
							<option value="계명대">계명대</option>
						</select>
					</td>
				</c:if>
				<c:if test="${session.school eq '계명대'}">				
					<td class="txtB3 pd15">
						<select name="school" class="select">
							<option value="">학교를 선택해주세요.</option>
							<option value="경북대">경북대</option>
							<option value="영남대">영남대</option>
							<option value="계명대" selected>계명대</option>
						</select>
					</td>
				</c:if>												
			</tr>		
			<tr>
				<td class="txtB2 pd15" width=150>학과</td>
				<c:if test="${session.depart eq '기계공학과'}">		
					<td class="txtB3 pd15">
						<select name="depart" class="select">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과" selected>기계공학과</option>
							<option value="정보통신공학과">정보통신공학과</option>
							<option value="컴퓨터공학과">컴퓨터공학과</option>
							<option value="전자공학과">전자공학과</option>
							<option value="경영학과">경영학과</option>
							<option value="경제학과">경제학과</option>
						</select>
					</td>
				</c:if>
				<c:if test="${session.depart eq '정보통신공학과'}">		
					<td class="txtB3 pd15">
						<select name="depart" class="select">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과">기계공학과</option>
							<option value="정보통신공학과" selected>정보통신공학과</option>
							<option value="컴퓨터공학과">컴퓨터공학과</option>
							<option value="전자공학과">전자공학과</option>
							<option value="경영학과">경영학과</option>
							<option value="경제학과">경제학과</option>
						</select>
					</td>
				</c:if>
				<c:if test="${session.depart eq '컴퓨터공학과'}">		
					<td class="txtB3 pd15">
						<select name="depart" class="select">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과">기계공학과</option>
							<option value="정보통신공학과">정보통신공학과</option>
							<option value="컴퓨터공학과" selected>컴퓨터공학과</option>
							<option value="전자공학과">전자공학과</option>
							<option value="경영학과">경영학과</option>
							<option value="경제학과">경제학과</option>
						</select>
					</td>
				</c:if>
				<c:if test="${session.depart eq '전자공학과'}">		
					<td class="txtB3 pd15">
						<select name="depart" class="select">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과">기계공학과</option>
							<option value="정보통신공학과">정보통신공학과</option>
							<option value="컴퓨터공학과">컴퓨터공학과</option>
							<option value="전자공학과" selected>전자공학과</option>
							<option value="경영학과">경영학과</option>
							<option value="경제학과">경제학과</option>
						</select>
					</td>
				</c:if>
				<c:if test="${session.depart eq '경영학과'}">		
					<td class="txtB3 pd15">
						<select name="depart" class="select">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과">기계공학과</option>
							<option value="정보통신공학과">정보통신공학과</option>
							<option value="컴퓨터공학과">컴퓨터공학과</option>
							<option value="전자공학과">전자공학과</option>
							<option value="경영학과" selected>경영학과</option>
							<option value="경제학과">경제학과</option>
						</select>
					</td>
				</c:if>
				<c:if test="${session.depart eq '경제학과'}">		
					<td class="txtB3 pd15">
						<select name="depart" class="select">
							<option value="">학과를 선택해주세요.</option>
							<option value="기계공학과">기계공학과</option>
							<option value="정보통신공학과">정보통신공학과</option>
							<option value="컴퓨터공학과">컴퓨터공학과</option>
							<option value="전자공학과">전자공학과</option>
							<option value="경영학과">경영학과</option>
							<option value="경제학과" selected>경제학과</option>
						</select>
					</td>
				</c:if>																				
			</tr>
			<tr>
				<td class="pdTB15" colspan="2" align="center">
					<a href="#" onClick="submitForm();" class="btn_s">수정완료</a>
					<a href="<c:url value='/member/mypage.do'/>"class="btn_s">취소</a>
					</td>
		</table>
		</form>			
		</td>
	</tr>
</table>
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