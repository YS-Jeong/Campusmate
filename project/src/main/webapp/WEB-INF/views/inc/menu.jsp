<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<c:set var="session" value="${sessionScope.login}" scope="application"/>
	<header>
		<div class = "top-btn">
			<ul class = "member">
	        	<c:if test="${not empty session}">
	        		<li><a><c:out value="${session.name}님 환영합니다."/></a></li>
	        	    <li><a href="<c:url value='/member/mypage.do'/>">회원정보수정</a></li>
	         		<li><a href="<c:url value='/member/actionLogout.do'/>">로그아웃</a></li>
	            </c:if>     
	           	<c:if test="${empty session}">
	           		<li><a href="<c:url value='/member/login.do'/>">LOGIN</a></li>
	            	<li><a href="<c:url value='/member/join.do'/>">JOIN</a></li>    
	            </c:if>   
         	</ul>
		</div>
		<div class="container text-center">
			<div class="fh5co-navbar-brand">
				<a class="fh5co-logo" href="<c:url value='../index.do'/>">CAMPUSMATE</a>
			</div>
			<nav id="fh5co-main-nav" role="navigation" class="menu">
				<div>
					<ul>
						<li><a href="<c:url value='../index.do'/>" class="active">Home</a></li>
						<li><a href="#none">CAMPUSDATE</a>
							<ul class ="submenu">
								<li><a href="<c:url value='./match/match_intro.do'/>">소개</a></li>
								<li><a href="<c:url value='./match/match_join.do'/>">매칭등록</a></li>
								<li><a href="<c:url value='./match/match_modify.do'/>">매칭수정</a></li>
								<li><a href="<c:url value='./match/matching.do'/>">매칭하기</a></li>
							</ul>
						</li>
						<li><a href="services.html">CAMPUSGROUP</a>
							<ul class ="submenu">
								<li><a href="<c:url value='/match/date_intro.do'/>">동아리</a></li>
								<li><a href="./campusmate_date/member.jsp">스터디</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>