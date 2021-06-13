<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header_test.jsp" %>
<%@ include file="/WEB-INF/views/inc/login.jsp" %>


<body>


<c:set var="session" value="${sessionScope.login}" scope="application"/>

<!-- contents 시작 -->
<div class="join-wrap">

	<div class= "join-box">

		<h1>매칭등록</h1>

		
		<form method="post" name="frm" action="<c:url value='/member/joinInsert.do'/>">
		<div class ="join-form">
			<ul>
				<li>
				<div class="match-img">
           			<label for="">프로필</label>
           			<img src="../img/Jeongyeseong.jpg" alt="" width="150" height="200">
            		<input type="file" name ="uploadFile"> <!-- 첨부파일 이름을 줌 //commit test-->
       			</div>
          			</li>
				<li>
					<label for="">학번</label>
					<input type="text" name="st_id" placeholder="학번">
				</li>
				<li>
					<label for="">카카오톡 ID</label>
					<input type="text" name="st_id" placeholder="카카오톡 ID">
				</li>
				<li>
					<label for="">키</label>
					<input type="text" name="st_id" placeholder="키">
				</li>
				<li>
					<label for="">채형</label>
					<select name="body_shape"/>
						<option value="">체형을 선택해주세요.</option>
						<option value="마른">마른</option>
						<option value="보통">보통</option>
						<option value="통통">통통</option>
					</select>
				</li>	
					<label for=""> 지역</label>
					<select name=""/>
						<option value="">구를 선택해주세요.</option>
						<option value="동구">동구</option>
						<option value="수성구">수성구</option>
						<option value="북구">북구</option>
						<option value="서구">서구</option>
						<option value="중구">중구</option>
						<option value="남구">남구</option>
						<option value="달서구">달서구</option>
						<option value="달성군">달성군</option>
					</select>
					
					<li class="gender">
						<label for="">어떤 메이트를 만나고 싶나요?</label>
						<span>
							<label for="">스터디</label>
							<input type="radio" name="gender" value="스터디"/>
						</span>
						<span>
							<label for="">간단 맥주</label>
							<input type="radio" name="gender" value="간단맥주"/>
						</span>
						<span>
							<label for="">영화</label>
							<input type="radio" name="gender" value="영화"/>
						</span>
						<span>
							<label for="">식사</label>
							<input type="radio" name="gender" value="식사"/>
						</span>
						<span>
							<label for="">채팅</label>
							<input type="radio" name="gender" value="채팅"/>
						</span>
						<span>
							<label for="">고민상담</label>
							<input type="radio" name="gender" value="고민 상담"/>
						</span>
					</li>
				<li class="join-btn">
				<!-- 가입완료 버튼 눌렀을 때 submitForm()함수 실행  -->
	    		<a href="#none" onclick="submitForm();">입력 완료</a>

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
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</html>