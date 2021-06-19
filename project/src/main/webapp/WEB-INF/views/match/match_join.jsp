<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<style>
/* HIDE RADIO */
[type=radio][name=purpose] { 
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
  outline: 5px solid #f00;s
}

</style>

<body>


<%@ include file="/WEB-INF/views/inc/menu.jsp" %>
<c:set var="sesseion" value="${sessionScope.login}" scope="application"/> 
<c:if test="${session==null}">
<script>
alert("로그인이 필요한 서비스입니다.");
location.href='<c:url value ="/member/login.do"/>'
</script>
</c:if>

<!-- contents 시작 -->
<div class="join-wrap">

   <div class= "join-box">

      <h1>매칭등록</h1>  
      <form method="post" name="frm" action="<c:url value='/match/match_insert.do'/>">
	      <div class ="join-form">
	         <ul>
	            <li>
	              <label for="">프로필</label>
	              <input type="file" name ="oriFilename" onchange="readURL(this);">
	              <br/><br/>
	              <img id="preview"/> <!-- 파일 업로드시 미리보기 -->
	            </li>
	            <li>
	               <label for="">카카오톡 ID</label>
	               <input type="text" name="kakao_id" placeholder="카카오톡 ID" >
	            </li>
	            <li>
	               <label for="">키</label>
	               <input type="text" name="height" placeholder="키">
	            </li>
	            <li>
	               <label for="">체형</label>
	               <select id="select_1" name="body_shape" >
	                  <option value="#none" selected disabled>체형을 선택해주세요.</option>
	                  <option value="마른">마른</option>
	                  <option value="보통">보통</option>
	                  <option value="통통">통통</option>
	               </select>
				
	            </li>
	            <li>   
	               <label for=""> 지역</label>
	               <select name="division">
	                  <option value="none" selected disabled>구를 선택해주세요.</option>
	                  <option value="동구">동구</option>
	                  <option value="수성구">수성구</option>
	                  <option value="북구">북구</option>
	                  <option value="서구">서구</option>
	                  <option value="중구">중구</option>
	                  <option value="남구">남구</option>
	                  <option value="달서구">달서구</option>
	                  <option value="달성군">달성군</option>
	               </select>
	              </li> 
	               <li>
	                  <label for="">어떤 메이트를 만나고 싶나요?</label>
	                     <br></br>
	                     <div class="row_arr">
	                     <div class="row1">
	                   
	                     	<label>
	                        	<input type="radio" name="purpose" value="소개팅">
	                        	<img src="https://cdn.pixabay.com/photo/2015/03/26/11/02/heart-692312_1280.jpg">
	                            <h2>소개팅</h2>
	                       </label>
		                       <label>
		                       		<input type="radio" name="purpose" value="간단맥주">
		                            <img src="https://cdn.pixabay.com/photo/2015/07/10/17/53/beer-839865_1280.jpg">
		                            <h2>간단맥주</h2>
		                       </label>
	                       <label>
	                       <input type="radio" name="purpose" value="혼밥싫어">
	                       <img src="https://cdn.pixabay.com/photo/2015/03/26/09/42/breakfast-690128_1280.jpg">
	                        <h2>혼밥싫어</h2>
	                     </label>
	                     </div>
	                     <div class="row2">
	                        <label>
	                          <input type="radio" name="purpose" value="같이열공">
	                          <img src="https://cdn.pixabay.com/photo/2016/06/01/06/26/open-book-1428428_1280.jpg">
	                           <h2>같이열공</h2>
	                       </label>
	                          <label>
	                          <input type="radio" name="purpose" value="영화봐요">
	                          <img src="https://cdn.pixabay.com/photo/2017/11/24/10/43/ticket-2974645_1280.jpg">
	                            <h2>영화봐요</h2>
	                       </label>
	                       <label>
	                       <input type="radio" name="purpose" value="고민상담">
	                       <img src="https://cdn.pixabay.com/photo/2017/04/08/10/33/smartphone-2212963_1280.jpg">
	                        <h2>고민상담</h2>
	                     </label>
	                     </div>
	                     <div class="row3">
	                        <label>
	                          <input type="radio" name="purpose" value="함께운동">
	                          <img src="https://cdn.pixabay.com/photo/2015/04/20/13/44/sports-731506_1280.jpg">
	                           <h2>함께운동</h2>
	                       </label>
	                          <label>
	                          <input type="radio" name="purpose" value="즉흥여행">
	                          <img src="https://cdn.pixabay.com/photo/2016/01/19/17/57/car-1149997_1280.jpg">
	                            <h2>즉흥여행</h2>
	                       </label>
	                       <label>
	                       <input type="radio" name="purpose" value="취업상담">
	                       <img src="https://cdn.pixabay.com/photo/2015/07/28/20/51/drink-864958_1280.jpg">
	                        <h2>취업상담</h2>
	                     </label>
	                     </div>
	                     </div>
	                  
	               </li>
	            <li class="join-btn">
	            <!-- 가입완료 버튼 눌렀을 때 submitForm()함수 실행  -->
	             <a href="#none" onclick="submitForm();">제출완료</a>
	
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


// 입력창 값이 비었을 때 토스트 창 띄우는 기능================================
function submitForm() {
	
  	if (document.frm.kakao_id.value==""){
      alert('카카오톡 ID를 입력해주세요.');
      document.frm.kakao_id.focus();
   } else if (document.frm.height.value==""){
      alert('키를 입력해주세요.');
      document.frm.height.focus();
   }
   else if ($("select[name=body_shape]").val()===null){
	   alert('체형을 선택해주세요'); 
   }
   else if ($("select[name=division]").val()===null){
	   alert('지역을 선택해주세요'); 
   }
   else if(document.frm.purpose.value==""){
	   alert("어떤 메이트를 만나고싶은지 선택해주세요.");
	}
   else{
      var r = confirm("매칭등록을 완료하셨나요?");
      if (r == true) {
          document.frm.submit(); //yes 눌렀을때 매칭 결과 화면으로 이동
      } else {
          return false; //취소 버튼 눌렀을때
      }     
   }
}
//파일 업로드 시 미리보기 
function readURL(input) {
   if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
         document.getElementById('preview').src = e.target.result;
      };
      reader.readAsDataURL(input.files[0]);
   } else {
      document.getElementById('preview').src = "";
   }
}
</script>


</body>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</html>