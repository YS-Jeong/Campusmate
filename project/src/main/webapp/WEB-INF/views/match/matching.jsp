<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>


<%@ include file="/WEB-INF/views/inc/menu.jsp" %>
<style>
.join{

    display: flex;
   
}
/* .join-box{
	width:1000px;}
.join-box .join-form1{
 	width: 100%;
    margin: 0 auto;
    background: #fff;
    border: 5px solid #ffc10733;
    border-radius: 25px;
    padding: 30px;
}
.join-box .join-form2 {
    width: 100%;
    margin: 0 auto;
    background: #fff;
    border: 5px solid #ffc10733;
    border-radius: 25px;
    padding: 30px;
} */
img{width:200px; height:200px;}
img.x{width:100px; height:100px; margin-top: 250px; padding-right: 10px; padding-left: 5px;}
body{background-image:url('https://image.freepik.com/free-vector/abstract-simple-dot-pattern-design-decoration-background_121035-35.jpg')}
body > div > div > div:nth-child(2) > ul > li > h1 > a:nth-child(1){color:#f88e8e;}
body > div > div > div:nth-child(2) > ul > li > h1 > a:nth-child(2){color:#f88e8e;}
body > div > div > div:nth-child(2) > ul > li > h1 > a:nth-child(3){color:#007bffb0;}
body > div > div > div:nth-child(2) > ul > li h1{font-size:16px; margin-bottom:30px;}
</style>
<html>
<body>

<div class="join-wrap">

   <div class= "join-box">

      <h1>결과확인</h1>
      <div>
	      <ul>
		      <li>
		      	 <h1><a>${matchVO.name}</a>님과 <a>${matchVO2.name}</a>님은 <a>${matchVO.purpose}</a>으로 매칭되었습니다.</h1>
		      </li>
	      </ul>
      </div>
      <div class="join">
         <div class ="join-form1">
            <ul>
       		 <li>
				</li>
               <li>
                 <label for="">프로필</label>
                 <div class="thum">
					<img src="<c:url value='/match/match_image.do'/>?st_id=${matchVO.st_id}">
				</div>
                 <br/><br/>
               </li>
               <li>
               <div>
                  <label for="">카카오톡 ID</label>
                  <div>
                  <input type="text" name="kakao_id" placeholder="카카오톡 ID" value="${matchVO.kakao_id}">
                  </div>
                </div>  
               </li>
               <li>
                  <label for="">키</label>
                  <input type="text" name="height" placeholder="키" value="${matchVO.height}">
               </li>
               <li>
                  <label for="">채형</label>
                  <select name="body_shape1">
                     <c:if test="${matchVO.body_shape eq '마른'}">
                     <option disabled="disabled" value="#none">체형을 선택해주세요.</option>
                     <option disabled="disabled" value="마른" selected>마른</option>
                     <option disabled="disabled" value="보통">보통</option>
                     <option disabled="disabled" value="통통">통통</option>
                    </c:if>
                    <c:if test="${matchVO.body_shape eq '보통'}">
                     <option disabled="disabled" value="#none">체형을 선택해주세요.</option>
                     <option disabled="disabled" value="마른">마른</option>
                     <option disabled="disabled" value="보통" selected>보통</option>
                     <option disabled="disabled" value="통통">통통</option>
                    </c:if>
                    <c:if test="${matchVO.body_shape eq '통통'}">
                     <option disabled="disabled" value="#none">체형을 선택해주세요.</option>
                     <option disabled="disabled" value="마른">마른</option>
                     <option disabled="disabled" value="보통">보통</option>
                     <option disabled="disabled" value="통통" selected>통통</option>
                    </c:if>
                  </select>
               </li>
               <li>   
                  <label for=""> 지역</label>
                  <select name="division" id ="division">
                  <c:if test="${matchVO.division eq '동구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구" selected>동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구">북구</option>
                     <option disabled="disabled" value="서구">서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                    </c:if>
                     <c:if test="${matchVO.division eq '수성구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구" selected>수성구</option>
                     <option disabled="disabled" value="북구">북구</option>
                     <option disabled="disabled" value="서구">서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                      <c:if test="${matchVO.division eq '북구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" selected>북구</option>
                     <option disabled="disabled" value="서구">서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                     <c:if test="${matchVO.division eq '서구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" >북구</option>
                     <option disabled="disabled" value="서구" selected>서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                     <c:if test="${matchVO.division eq '중구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" >북구</option>
                     <option disabled="disabled"value="서구" >서구</option>
                     <option disabled="disabled" value="중구" selected>중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                     <c:if test="${matchVO.division eq '남구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled"value="북구" >북구</option>
                     <option disabled="disabled"value="서구" >서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구" selected>남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                     <c:if test="${matchVO.division eq '달서구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" >북구</option>
                     <option disabled="disabled" value="서구" >서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구" selected>달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                      <c:if test="${matchVO.division eq '달성군'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" >북구</option>
                     <option disabled="disabled" value="서구" >서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군" selected>달성군</option>
                     </c:if>
                  </select>
				</li> 
				</ul>
			</div>
			<div class="sign">
				<img class="x" src="../assets/images/sign.png" alt="">
			</div>
			 <div class ="join-form2">
            <ul>
               <li>
                 <label for="">프로필</label>
                 <li>
                	<div class="thum">
					<img src="<c:url value='/match/match_image.do'/>?st_id=${matchVO2.st_id}">
					</div>
				</li>	
               <br></br>
               <li>
                  <label for="">카카오톡 ID</label>
                  <input type="text" name="kakao_id" placeholder="카카오톡 ID" value="${matchVO2.kakao_id}">
                  
               </li>
               <li>
                  <label for="">키</label>
                  <input type="text" name="height" placeholder="키" value="${matchVO2.height}">
               </li>
               <li>
                  <label for="">채형</label>
                  <select name="body_shape2" id="body_shape">
                     <c:if test="${matchVO2.body_shape eq '마른'}">
                     <option disabled="disabled">체형을 선택해주세요.</option>
                     <option disabled="disabled" value="마른" selected>마른</option>
                     <option disabled="disabled" value="보통">보통</option>
                     <option disabled="disabled" value="통통">통통</option>
                    </c:if>
                    <c:if test="${matchVO2.body_shape eq '보통'}">
                     <option disabled="disabled" value="#none">>체형을 선택해주세요.</option>
                     <option disabled="disabled" value="마른">마른</option>
                     <option disabled="disabled" selected>보통</option>
                     <option disabled="disabled" value="통통">통통</option>
                    </c:if>
                    <c:if test="${matchVO2.body_shape eq '통통'}">
                     <option disabled="disabled" value="#none">체형을 선택해주세요.</option>
                     <option disabled="disabled" value="마른">마른</option>
                     <option disabled="disabled" value="보통">보통</option>
                     <option disabled="disabled" value="통통" selected>통통</option>
                    </c:if>
                  </select>
               </li>
               <li>   
                  <label for=""> 지역</label>
                  <select name="division" >
                  <c:if test="${matchVO2.division eq '동구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구" selected>동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구">북구</option>
                     <option disabled="disabled" value="서구">서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                    </c:if>
                     <c:if test="${matchVO2.division eq '수성구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구" selected>수성구</option>
                     <option disabled="disabled" value="북구">북구</option>
                     <option disabled="disabled" value="서구">서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                      <c:if test="${matchVO2.division eq '북구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" selected>북구</option>
                     <option disabled="disabled" value="서구">서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                     <c:if test="${matchVO2.division eq '서구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" >북구</option>
                     <option disabled="disabled" value="서구" selected>서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                     <c:if test="${matchVO2.division eq '중구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" >북구</option>
                     <option disabled="disabled" value="서구" >서구</option>
                     <option disabled="disabled" value="중구" selected>중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                     <c:if test="${matchVO2.division eq '남구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" >북구</option>
                     <option disabled="disabled" value="서구" >서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구" selected>남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                     <c:if test="${matchVO2.division eq '달서구'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" >북구</option>
                     <option disabled="disabled" value="서구" >서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구" selected>달서구</option>
                     <option disabled="disabled" value="달성군">달성군</option>
                     </c:if>
                      <c:if test="${matchVO2.division eq '달성군'}">
                     <option disabled="disabled" value="#none">구를 선택해주세요.</option>
                     <option disabled="disabled" value="동구">동구</option>
                     <option disabled="disabled" value="수성구">수성구</option>
                     <option disabled="disabled" value="북구" >북구</option>
                     <option disabled="disabled" value="서구" >서구</option>
                     <option disabled="disabled" value="중구">중구</option>
                     <option disabled="disabled" value="남구">남구</option>
                     <option disabled="disabled" value="달서구">달서구</option>
                     <option disabled="disabled" value="달성군" selected>달성군</option>
                     </c:if>
                     
                  </select>
				</li> 
				</ul>
			</div>
	</div>
</div>
	<div style="text-align:center; margin-top:20px;">
		<a href="#" onClick="alert('준비중인 서비스입니다.')" class="btn_s">채팅하기</a>
		<a href="<c:url value='/match/matching_intro.do'/>"class="btn_s">매칭계속하기</a>	
	</div>
</div>
                 
<script>
$("#body_shape1").not(":selected").attr("disabled", "disabled");
$("#body_shape2").not(":selected").attr("disabled", "disabled");
$("#division").not(":selected").attr("disalbed","disabled");

</script>

</body>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</html>









