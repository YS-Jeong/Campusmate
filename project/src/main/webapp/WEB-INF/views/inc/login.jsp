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
</header>
