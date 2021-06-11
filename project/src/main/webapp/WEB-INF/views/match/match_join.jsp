<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	<body>
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>
<!-- contents 시작 -->
<div class="match-wrap">

	<div class= "match-box">

		<h1>회원가입</h1>

		
		<form method="post" name="frm" action="<c:url value='/member/joinInsert.do'/>">
		<div class ="match-form">
			<ul>
				<li>
					<label for="">이상형</label>
					<input type="text" name="st_id" placeholder="학번">
					<a href="javascript:checkSt_Id();">중복확인</a>
				</li>
				<li>
					<label for="">카카오톡 ID</label>
					<input type="text" name="st_id" placeholder="학번">
					<a href="javascript:checkSt_Id();">중복확인</a>
				</li>
				<li>
					<label for="">이상형</label>
					<input type="text" name="st_id" placeholder="학번">
					<a href="javascript:checkSt_Id();">중복확인</a>
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

</body>
</html>