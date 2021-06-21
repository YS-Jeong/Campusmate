<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
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

		<h1>회원가입</h1>

		<form method="post" name="frm" action="<c:url value='/member/joinInsert.do'/>">
		<div class ="join-form">
			<ul>
				<li>
					<label for="">학번</label>
					<input type="text" name="st_id" placeholder="학번">
					<a href="javascript:checkSt_Id();">중복확인</a>
				</li>
				<li>
					<label for="">비밀번호</label>
					<input type="password" name="password" placeholder="비밀번호">
				</li>
				<li>
					<label for="">비밀번호 확인</label>
					<input type="password" placeholder="비밀번호확인">
				</li>
				<li>
					<label for="">이름</label>
					<input type="text" name="name" placeholder="이름">
				</li>
				<li>
					<label for="">전화번호</label>
					<input type="text" name="phone" placeholder="전화번호">
				</li>
				<li>
					<label for="">생년월일</label>
					<input type="text" name="birth" placeholder="생년월일(6자리)">
				</li>
				<li class="gender">
					<label for="">성별</label>
					<span>
						<label for="">남</label>
						<input type="radio" name="gender" value="남자"/>
					</span>
					<span>
						<label for="">여</label>
						<input type="radio" name="gender" value="여자"/>
					</span>
				</li>
				<li>
					<label for="">학교</label>
					<select name="school">
						<option value="">학교를 선택해주세요.</option>
						<option value="경북대">경북대학교</option>
						<option value="영남대">영남대학교</option>
						<option value="계명대">계명대학교</option>
					</select>
					
					<label for="">학과</label>
					<select name="depart">
						<option value="">학과를 선택해주세요.</option>
						<option value="기계공학과">기계공학과</option>
						<option value="정보통신공학과">정보통신공학과</option>
						<option value="컴퓨터공학과">컴퓨터공학과</option>
						<option value="전자공학과">전자공학과</option>
						<option value="경영학과">경영학과</option>
						<option value="경제학과">경제학과</option>
					</select>
				</li>

				<li class="join-btn">

	    		<a href="#none">이전으로</a>
	    		
				<!-- 가입완료 버튼 눌렀을 때 submitForm()함수 실행  -->
	    		<a href="#none" onclick="submitForm();">가입완료</a>

	    		</li>

			</ul>

			</div>

		</form>

	</div>

</div>
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