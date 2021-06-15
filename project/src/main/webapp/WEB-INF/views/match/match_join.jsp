<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header_test.jsp" %>
<%@ include file="/WEB-INF/views/inc/login.jsp" %>


<style>
.study_pic{
	content:url(study_pic);
	height:100px;
	width:70px;
}

[type=radio] +div{
	position:absolute;
	opacity:0;
	width:0;
	height:0;
}

</style>
<body>


<c:set var="session" value="${sessionScope.login}" scope="application"/>


<!-- contents 시작 -->
<div class="join-wrap">

	<div class= "join-box">

		<h1>매칭등록</h1>
		<form method="post" name="frm" action="<c:url value='/match/match_Insert.do'/>"> 
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
					<input type="text" name="kakao_id" placeholder="카카오톡 ID">
				</li>
				<li>
					<label for="">키</label>
					<input type="text" name="height" placeholder="키">
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
					<select name="division"/>
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
					
				
				</br></br>
				<li class="join-btn">
				<!-- 가입완료 버튼 눌렀을 때 submitForm()함수 실행  -->
	    		<a href="#none" onclick="submitForm();">다음 단계</a>

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
		alert('학번을 입력해주세요.');
		document.frm.st_id.focus();
	} else if (document.frm.kakao_id.value==""){
		alert('카카오톡 ID를 입력해주세요.');
		document.frm.height.focus();
	} else if (document.frm.height.value==""){
		alert('키를 입력해주세요.');
		document.frm.body_shape.focus();
	} else if (document.frm.body_shape.value==""){
		alert('체형을 선택해주세요.');
		document.frm.body_shape.focus();
	} else if (document.frm.division.value==""){
		alert('지역을 선택해주세요.');
		document.frm.division.focus();
	}else{
		document.frm.submit();
	}
}

</script>

</body>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</html>