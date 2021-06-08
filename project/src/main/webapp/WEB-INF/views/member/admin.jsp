<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠퍼스 데이트 | 관리자</title>
<link type="text/css" rel="stylesheet" href="<c:url value='../css/style.css'/>"/>
</head>



<body>
<style>

</style>
<!-- 상단 헤더 -->
<div class="header">
	<div>
		<div class="logo">
			<h1><a href="./index.jsp"><img src="../img/logo-rem.png"></a></h1>
		</div>

		<div class="top-btn">
			<ul>
				<!-- 로그인 후 
				<li><a href="./member/login.html">로그아웃</a></li>
				<li><a href="./member/join.html">회원정보수정</a></li>
				-->
				<!-- 로그인 전-->
				<li><a href="../campusmate_menu/login.jsp">로그인</a></li>
				<li><a href="../campusmate_menu/join.jsp">회원가입</a></li>
				<!-- 관리자 로그인시 -->
				<li><a href="../campusmate_menu/admin.jsp">관리자</a></li>
			</ul>
		</div>
	</div>
</div>

캠퍼스메이트 - 관리자 화면입니다.

</body>
</html>