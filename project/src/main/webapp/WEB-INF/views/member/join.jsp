<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
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
		<form method="post" name="frm" action="<c:url value='/member/joinInsert.do'/>">
		<table border="0" cellpadding="0" cellspacing="0" width="992">
			<tr>
				<td class="pdTB830">
					<div class="txtMainContentTB">회원가입</div>
				</td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>학번</td>
				<td class="txtB3 pd15"><input type="text" title="학번" name="st_id" maxlength="15" style="width:200px;"></td>
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
				<td class="txtB3 pd15"><input type="text" name="name" maxlength="15" tabindex="2" style="width:200px;" value=""></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>전화번호</td>
				<td class="txtB3 pd15"><input type="text" name="phone" maxlength="15" tabindex="2" style="width:200px;"></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>생년월일</td>
				<td class="txtB3 pd15"><input type="text" name="birth" maxlength="15" tabindex="2" style="width:200px;"></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>성별</td>
				<td class="txtB3 pd15">
				<input name="gender" type="radio" value="남자"/>남자
				<input name="gender" type="radio" value="여자"/> 여자</td>
			</tr>				
			<tr>
				<td class="txtB2 pd15" width=150>학교</td>
				<td class="txtB3 pd15">
					<select name="school" class="select">
						<option value="">학교를 선택해주세요.</option>
						<option value="경북대">경북대</option>
						<option value="영남대">영남대</option>
						<option value="계명대">계명대</option>
					</select>
				</td>
			</tr>		
			<tr>
				<td class="txtB2 pd15" width=150>학과</td>
				<td class="txtB3 pd15">
					<select name="depart" class="select">
						<option value="">학과를 선택해주세요.</option>
						<option value="기계공학과">기계공학과</option>
						<option value="정보통신공학과">정보통신공학과</option>
						<option value="컴퓨터공학과">컴퓨터공학과</option>
						<option value="전자공학과">전자공학과</option>
						<option value="경영학과">경영학과</option>
						<option value="경제학과">경제학과</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="pdTB15" colspan="2" align="center">
					<a href="#" onClick="submitForm();" class="btn_s">가입</a></td>
		</table>
		</form>			
		</td>
	</tr>
</table>
<!-- contents 끝 -->
<script>
var msg = '<c:out value="${msg}"/>';
if(msg != ''){
   alert(msg);
}

//controller로부터 checkSt_Id() 호출. 
function checkSt_Id() {

	// 입력 폼으로부터 학번 값을 받아 옴. 
	var st_id = document.frm.st_id.value; 
	//alert(st_id);
	
	$.ajax({
		type: 'POST',
		url: '<c:url value="/member/checkId.do"/>',
		dataType: 'JSON',
		data: {"st_id": st_id},
		success:function(data){
			
			//전달받은 duplicate의 값에 따라 다른 알림 창 띄움. 
			if(data.duplicate == true){
				alert('이미 가입된 학번이에요!');
			} else {
				alert('사용 가능한 학번이에요!');
			} 
		},
		error:function(jqXHR, testStatus, errorThrown){
			console.log(textStatus);
		}
	})
}

// 입력창 값이 비었을 때 토스트 창 띄우는 기능================================
function submitForm() {
	if (document.frm.st_id.value==""){
		alert('학번을 입력해주세요.');
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