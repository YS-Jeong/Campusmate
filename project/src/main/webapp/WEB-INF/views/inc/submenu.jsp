<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

 <div class="snb-wrap">
	<div>
		<ul>
			<li class="on"><a href="<c:url value='/group/circle_list.do'/>"><span>동아리게시판</span></a></li>
			<li><a href="<c:url value='/group/study_list.do'/>"><span>스터디게시판</span></a></li>
		</ul>		
	</div>
</div>