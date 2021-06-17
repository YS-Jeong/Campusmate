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
      <c:set var="sesseion" value="${sessionScope.login}" scope="application"/>
     
      <form method="post" name="frm" action="<c:url value='/match/match_update.do'/>">
	      <div class ="join-form">
	         <ul>
	            <li>
	              <label for="">프로필</label>
	              <input type="file" name ="oriFilename" onchange="readURL(this);">
	              <br/><br/>
	              <img id="preview"/> <!-- 파일 업로드시 미리보기 -->
	            </li>
	            <li>
	               <label for="">학번</label>
	               <input type="text" name="st_id" placeholder="학번" value="${session.st_id}">
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
	               <label for="">채형</label>
				   <input type="text" name="height" placeholder="키" >
	            </li>
	            <li>   
	               <label for=""> 지역</label>
	               <input type="text" name="division">
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