<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>


<%@ include file="/WEB-INF/views/inc/menu.jsp" %>

<body>
<div class="join-wrap">

   <div class= "join-box">

      <h1>결과확인</h1>
         <div class ="join-form">
            <ul>
       		 <li>
				</li>
               <li>
                 <label for="">프로필</label>
                 <input type="file" name ="oriFilename" onchange="readURL(this);">
                 <br/><br/>
                 <img id="preview"/> <!-- 파일 업로드시 미리보기 -->
               </li>
               <li>
                  <label for="">카카오톡 ID</label>
                  <input type="text" name="kakao_id" placeholder="카카오톡 ID" value="${matchVO.kakao_id}">
                  
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
			<c:forEach var="matchVOList" items="${matchVOList}" varStatus="status">
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
                  <input type="text" name="kakao_id" placeholder="카카오톡 ID" value="${matchVOList.kakao_id}">
                  
               </li>
               <li>
                  <label for="">키</label>
                  <input type="text" name="height" placeholder="키" value="${matchVOList.height}">
               </li>
               <li>
                  <label for="">채형</label>
                  <select name="body_shape2" id="body_shape">
                     <c:if test="${matchVOList.body_shape eq '마른'}">
                     <option disabled="disabled">체형을 선택해주세요.</option>
                     <option disabled="disabled" value="마른" selected>마른</option>
                     <option disabled="disabled" value="보통">보통</option>
                     <option disabled="disabled" value="통통">통통</option>
                    </c:if>
                    <c:if test="${matchVOList.body_shape eq '보통'}">
                     <option disabled="disabled" value="#none">>체형을 선택해주세요.</option>
                     <option disabled="disabled" value="마른">마른</option>
                     <option disabled="disabled" selected>보통</option>
                     <option disabled="disabled" value="통통">통통</option>
                    </c:if>
                    <c:if test="${matchVOList.body_shape eq '통통'}">
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
                  <c:if test="${matchVOList.division eq '동구'}">
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
                     <c:if test="${matchVOList.division eq '수성구'}">
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
                      <c:if test="${matchVOList.division eq '북구'}">
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
                     <c:if test="${matchVOList.division eq '서구'}">
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
                     <c:if test="${matchVOList.division eq '중구'}">
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
                     <c:if test="${matchVOList.division eq '남구'}">
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
                     <c:if test="${matchVOList.division eq '달서구'}">
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
                      <c:if test="${matchVOList.division eq '달성군'}">
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
			</c:forEach>
	</div>
</div>
                 
<script>
$("#body_shape1").not(":selected").attr("disabled", "disabled");
$("#body_shape2").not(":selected").attr("disabled", "disabled");
$("#division").not(":selected").attr("disalbed","disabled");

</script>

</body>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>







