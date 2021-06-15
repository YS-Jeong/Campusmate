<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>


<style>
/* HIDE RADIO */
[type=radio] { 
  position: absolute;
  opacity: 0;
  width: 0;
  height: 0;
}

/* IMAGE STYLES */
[type=radio] + img {
  width:200px;
  height:150px;
  cursor: pointer;
}

/* CHECKED STYLES */
[type=radio]:checked + img {
  outline: 5px solid #f00;
}
.join-box .join-form {
    max-width: 700px;
    text-algin:center;
}
.join-box h2 {
    text-align: center;
    margin-top: 5px;
    font-size: 15px;
}
ul{
    text-align: center;
}
span {
    font-size: 10px;
}

</style>

<body>


<c:set var="session" value="${sessionScope.login}" scope="application"/>

<!-- contents 시작 -->
<div class="join-wrap">

	<div class= "join-box">

		<h1>매칭등록</h1>

		
		<form method="post" name="frm" action="<c:url value='/member/joinInsert.do'/>">
		<div class ="join-form">
			<ul>
					<li class="gender">
						<label for="">어떤 메이트를 만나고 싶나요?</label>
							</br>
							<span>
								<label>
								  <input type="radio" name="test" value="소개팅">
								  <img src="https://cdn.pixabay.com/photo/2015/03/26/11/02/heart-692312_1280.jpg">
								   <h2>소개팅</h2>
							  </label>
								  <label>
								  <input type="radio" name="test" value="간단맥주">
								  <img src="https://cdn.pixabay.com/photo/2015/07/10/17/53/beer-839865_1280.jpg">
								    <h2>간단맥주</h2>
							  </label>
							  <label>
							  <input type="radio" name="test" value="혼밥싫어">
							  <img src="https://cdn.pixabay.com/photo/2015/03/26/09/42/breakfast-690128_1280.jpg">
							   <h2>혼밥싫어</h2>
							</label>
							</span>
							<span>
								<label>
								  <input type="radio" name="test" value="같이열공">
								  <img src="https://cdn.pixabay.com/photo/2016/06/01/06/26/open-book-1428428_1280.jpg">
								   <h2>같이열공</h2>
							  </label>
								  <label>
								  <input type="radio" name="test" value="영화봐요">
								  <img src="https://cdn.pixabay.com/photo/2017/11/24/10/43/ticket-2974645_1280.jpg">
								    <h2>영화봐요</h2>
							  </label>
							  <label>
							  <input type="radio" name="test" value="고민상담">
							  <img src="https://cdn.pixabay.com/photo/2017/04/08/10/33/smartphone-2212963_1280.jpg">
							   <h2>고민상담</h2>
							</label>
							</span>
							<span>
								<label>
								  <input type="radio" name="test" value="함께운동">
								  <img src="https://cdn.pixabay.com/photo/2015/04/20/13/44/sports-731506_1280.jpg">
								   <h2>함께운동</h2>
							  </label>
								  <label>
								  <input type="radio" name="test" value="즉흥여행">
								  <img src="https://cdn.pixabay.com/photo/2016/01/19/17/57/car-1149997_1280.jpg">
								    <h2>즉흥여행</h2>
							  </label>
							  <label>
							  <input type="radio" name="test" value="취업상담">
							  <img src="https://cdn.pixabay.com/photo/2015/07/28/20/51/drink-864958_1280.jpg">
							   <h2>취업상담</h2>
							</label>
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