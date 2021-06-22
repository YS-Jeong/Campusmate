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

img{width:200px; height:200px;}

</style>

<body>
<!-- contents 시작 -->
<table class="join-table" border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td style="padding-top:11px" align="center">
		<c:set var="session" value="${sessionScope.login}" scope="application"/>			
		<form method="post" name="frm" action="<c:url value='/match/match_update.do'/>"  enctype="multipart/form-data">
		<table border="0" cellpadding="0" cellspacing="0" width="992">
			<tr>
				<td class="pdTB830">
					<div class="txtMainContentTB">매칭수정</div>
				</td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>프로필 사진</td>
				<td class="txtB3 pd15">
					<img src="<c:url value='/match/match_image.do'/>?st_id=${matchVO.st_id}"><br>
					<input type="file" name ="uploadFile" onchange="readURL(this);"value="${matchVO.oriFilename}"> </td>
					<c:if test="${not empty matchVO.filename}">
						<td class="txtB3 pd15">${matchVO.oriFilename} <a href="#" onclick ="javascript:confirmDeleteFile();"> [삭제] </a></td>
					</c:if>		
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>카카오 ID</td>
				<td class="txtB3 pd15"><input type="text" name="kakao_id" tabindex="2 style="width:200px;" value="${matchVO.kakao_id}"></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>키</td>
				<td class="txtB3 pd15"><input type="text" name="height" tabindex="2" style="width:200px;" value="${matchVO.height}"></td>
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>체형</td>
				<c:if test="${matchVO.body_shape eq '마른'}">
					<td class="txtB3 pd15">
						<select name="body_shape" class="select">
	                     <option value="#none">체형을 선택해주세요.</option>
	                     <option value="마른" selected>마른</option>
	                     <option value="보통">보통</option>
	                     <option value="통통">통통</option>
						</select>					
					</td>
				</c:if>
				<c:if test="${matchVO.body_shape eq '보통'}">
					<td class="txtB3 pd15">
						<select name="body_shape" class="select">
	                     <option value="#none">체형을 선택해주세요.</option>
	                     <option value="마른">마른</option>
	                     <option value="보통" selected>보통</option>
	                     <option value="통통">통통</option>
						</select>					
					</td>
				</c:if>
				<c:if test="${matchVO.body_shape eq '통통'}">
					<td class="txtB3 pd15">
						<select name="body_shape" class="select">
	                     <option value="#none">체형을 선택해주세요.</option>
	                     <option value="마른">마른</option>
	                     <option value="보통">보통</option>
	                     <option value="통통" selected>통통</option>
						</select>					
					</td>
				</c:if>				
			</tr>	
			<tr>
				<td class="txtB2 pd15" width=150>지역</td>
				<c:if test="${matchVO.division eq '동구'}">
					<td class="txtB3 pd15">
						<select name="division" class="select">
	                     <option value="#none">구를 선택해주세요.</option>
	                     <option value="동구" selected>동구</option>
	                     <option value="수성구">수성구</option>
	                     <option value="북구">북구</option>
	                     <option value="서구">서구</option>
	                     <option value="중구">중구</option>
	                     <option value="남구">남구</option>
	                     <option value="달서구">달서구</option>
	                     <option value="달성군">달성군</option>
						</select>					
					</td>
				</c:if>			
				<c:if test="${matchVO.division eq '수성구'}">
					<td class="txtB3 pd15">
						<select name="division" class="select">
	                     <option value="#none">구를 선택해주세요.</option>
	                     <option value="동구">동구</option>
	                     <option value="수성구"selected>수성구</option>
	                     <option value="북구">북구</option>
	                     <option value="서구">서구</option>
	                     <option value="중구">중구</option>
	                     <option value="남구">남구</option>
	                     <option value="달서구">달서구</option>
	                     <option value="달성군">달성군</option>
						</select>					
					</td>
				</c:if>		
				<c:if test="${matchVO.division eq '북구'}">
					<td class="txtB3 pd15">
						<select name="division" class="select">
	                     <option value="#none">구를 선택해주세요.</option>
	                     <option value="동구">동구</option>
	                     <option value="수성구">수성구</option>
	                     <option value="북구"selected>북구</option>
	                     <option value="서구">서구</option>
	                     <option value="중구">중구</option>
	                     <option value="남구">남구</option>
	                     <option value="달서구">달서구</option>
	                     <option value="달성군">달성군</option>
						</select>					
					</td>
				</c:if>		
				<c:if test="${matchVO.division eq '서구'}">
					<td class="txtB3 pd15">
						<select name="division" class="select">
	                     <option value="#none">구를 선택해주세요.</option>
	                     <option value="동구">동구</option>
	                     <option value="수성구">수성구</option>
	                     <option value="북구">북구</option>
	                     <option value="서구"selected>서구</option>
	                     <option value="중구">중구</option>
	                     <option value="남구">남구</option>
	                     <option value="달서구">달서구</option>
	                     <option value="달성군">달성군</option>
						</select>					
					</td>
				</c:if>		
				<c:if test="${matchVO.division eq '중구'}">
					<td class="txtB3 pd15">
						<select name="division" class="select">
	                     <option value="#none">구를 선택해주세요.</option>
	                     <option value="동구">동구</option>
	                     <option value="수성구">수성구</option>
	                     <option value="북구">북구</option>
	                     <option value="서구">서구</option>
	                     <option value="중구"selected>중구</option>
	                     <option value="남구">남구</option>
	                     <option value="달서구">달서구</option>
	                     <option value="달성군">달성군</option>
						</select>					
					</td>
				</c:if>		
				<c:if test="${matchVO.division eq '남구'}">
					<td class="txtB3 pd15">
						<select name="division" class="select">
	                     <option value="#none">구를 선택해주세요.</option>
	                     <option value="동구">동구</option>
	                     <option value="수성구">수성구</option>
	                     <option value="북구">북구</option>
	                     <option value="서구">서구</option>
	                     <option value="중구">중구</option>
	                     <option value="남구"selected>남구</option>
	                     <option value="달서구">달서구</option>
	                     <option value="달성군">달성군</option>
						</select>					
					</td>
				</c:if>		
				<c:if test="${matchVO.division eq '달서구'}">
					<td class="txtB3 pd15">
						<select name="division" class="select">
	                     <option value="#none">구를 선택해주세요.</option>
	                     <option value="동구">동구</option>
	                     <option value="수성구">수성구</option>
	                     <option value="북구">북구</option>
	                     <option value="서구">서구</option>
	                     <option value="중구">중구</option>
	                     <option value="남구">남구</option>
	                     <option value="달서구"selected>달서구</option>
	                     <option value="달성군">달성군</option>
						</select>					
					</td>
				</c:if>			
				<c:if test="${matchVO.division eq '달성군'}">
					<td class="txtB3 pd15">
						<select name="division" class="select">
	                     <option value="#none">구를 선택해주세요.</option>
	                     <option value="동구">동구</option>
	                     <option value="수성구">수성구</option>
	                     <option value="북구">북구</option>
	                     <option value="서구">서구</option>
	                     <option value="중구">중구</option>
	                     <option value="남구">남구</option>
	                     <option value="달서구">달서구</option>
	                     <option value="달성군"selected>달성군</option>
						</select>					
					</td>
				</c:if>																													
			</tr>
			<tr>
				<td class="txtB2 pd15" width=150>목적</td>
				<c:if test="${matchVO.purpose eq '소개팅'}">
					<td class="txtB3 pd15">
						<div class="row_arr">
	                     <div class="row1">
	                   	 	<label>
	                        	<input type="radio" name="purpose" value="소개팅" checked>
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
					</td>
				</c:if>	
				<c:if test="${matchVO.purpose eq '간단맥주'}">
					<td class="txtB3 pd15">
						<div class="row_arr">
	                     <div class="row1">
	                   	 	<label>
	                        	<input type="radio" name="purpose" value="소개팅">
	                        	<img src="https://cdn.pixabay.com/photo/2015/03/26/11/02/heart-692312_1280.jpg">
	                            <h2>소개팅</h2>
	                       </label>
		                   <label>
		                   		<input type="radio" name="purpose" value="간단맥주" checked>
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
					</td>
				</c:if>			
				<c:if test="${matchVO.purpose eq '혼밥싫어'}">
					<td class="txtB3 pd15">
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
	                       		<input type="radio" name="purpose" value="혼밥싫어" checked>
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
					</td>
				</c:if>			
				<c:if test="${matchVO.purpose eq '같이열공'}">
					<td class="txtB3 pd15">
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
	                        	<input type="radio" name="purpose" value="같이열공" checked>
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
					</td>
				</c:if>			
				<c:if test="${matchVO.purpose eq '영화봐요'}">
					<td class="txtB3 pd15">
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
	                            <input type="radio" name="purpose" value="영화봐요" checked>
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
					</td>
				</c:if>			
				<c:if test="${matchVO.purpose eq '고민상담'}">
					<td class="txtB3 pd15">
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
	                      		 <input type="radio" name="purpose" value="고민상담" checked>
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
					</td>
				</c:if>			
				<c:if test="${matchVO.purpose eq '함께운동'}">
					<td class="txtB3 pd15">
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
	                          <input type="radio" name="purpose" value="함께운동" checked>
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
					</td>
				</c:if>			
				<c:if test="${matchVO.purpose eq '즉흥여행'}">
					<td class="txtB3 pd15">
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
	                          <input type="radio" name="purpose" value="즉흥여행" checked>
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
					</td>
				</c:if>			
				<c:if test="${matchVO.purpose eq '취업상담'}">
					<td class="txtB3 pd15">
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
	                       <input type="radio" name="purpose" value="취업상담" checked>
	                       <img src="https://cdn.pixabay.com/photo/2015/07/28/20/51/drink-864958_1280.jpg">
	                        <h2>취업상담</h2>
	                     </label>
	                     </div>
	                     </div>					
					</td>
				</c:if>																																					
			<tr>
				<td class="pdTB15" colspan="2" align="center">
					<a href="#" onClick="submitForm();" class="btn_s">수정완료</a>
					<a href="<c:url value='/index.do'/>"class="btn_s">취소</a>
					</td>
			</tr>			
		</table>
		</form>			
		</td>
	</tr>
</table>
<!-- contents 끝 -->

<%@ include file="/WEB-INF/views/inc/menu.jsp" %>
<<<<<<< HEAD



=======
>>>>>>> branch 'master' of https://github.com/YS-Jeong/Campusmate.git
<script>
var msg = '<c:out value="${msg}"/>';
if(msg != ''){
   alert(msg);
}

// 입력이 비었을 때 토스트 창 띄우는 기능================================
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
<!-- 프로필 사진 삭제 -->
<script>
	function confirmDeleteFile(){
		if(confirm('삭제하시겠습니까?')==true){
			$.ajax({
				type :'POST',
				url : '<c:url value="/match/match_deleteFile.do"/>',
				dataType :'JSON',
				data:{"st_id" : ${matchVO.st_id}},
				success:function(data){
					//파일 삭제를 ajax로 처리 
					if(data.success=="true"){
						//정상적으로 삭제가 되었다면
						location.reload(); //갱신 
					}else{
						//파일삭제가 실패했다면
						alert('파일 삭제가 실패하였습니다.');
					}
				},
				error : function(jqXHR,textStatus,errorThrown){
					console.log(textStatus);
				}
			})
		}
	}

</script>

</body>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</html>