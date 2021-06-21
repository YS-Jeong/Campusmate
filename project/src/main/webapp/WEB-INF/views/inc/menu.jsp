<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>  

<style>
.gnb_area {
    width: 100%;
    height: 15px;
    background: linear-gradient(-135deg, #fb380b, #ffc107) fixed;

    }
</style>
   <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
    <div class="gnb_area">
                        
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="<c:url value='/index.do'/>" class="logo">
                          CAMPUSMATE
                        </a>.
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="<c:url value='/index.do'/>">HOME</a></li>
                            <c:set var="session" value="${sessionScope.login}" scope="application"/>
	        				<c:if test="${not empty session}">
	                        	<li class="submenu">
	                                <a href="javascript:;">캠퍼스메이트</a>
	                                <ul>
			                        	<li><a href="<c:url value='/match/match_join.do'/>">매칭 등록</a></li>
				                        <li><a href="<c:url value='/match/match_modify.do'/>">매칭 수정</a></li>
				                        <li><a href="<c:url value='/match/matching_intro.do'/>">결과 확인</a></li>	                              		                              
	                                </ul>
	                            </li>
	                        </c:if>
	                        <c:if test="${empty session}">
	                       		<li class="submenu">
		                        	<a href="javascript:;">캠퍼스메이트</a>
		                            <!--<ul>
										<li><a href="<c:url value='/match/match_intro.do'/>">소개</a></li>  
									</ul>-->
								</li>
	                        </c:if>
                            <li class="submenu">
                                <a href="javascript:;">동아리</a>
                                <ul>
                                    <li><a href="<c:url value='/group/knu_circle_list.do'/>">경북대</a></li>
                                    <li><a href="<c:url value='/group/yu_circle_list.do'/>">영남대</a></li>
                                    <li><a href="<c:url value='/group/kmu_circle_list.do'/>">계명대</a></li>
                                    <li><a href="<c:url value='/group/union_circle_list.do'/>">연합</a></li>
                                </ul>
                            </li>
                             <li class="submenu">
                                <a href="javascript:;">스터디</a>
                                <ul>
                                    <li><a href="<c:url value='/group/knu_study_list.do'/>">경북대</a></li>
                                    <li><a href="<c:url value='/group/yu_study_list.do'/>">영남대</a></li>
                                    <li><a href="<c:url value='/group/kmu_study_list.do'/>">계명대</a></li>
                                    <li><a href="<c:url value='/group/union_study_list.do'/>"> 연합</a></li>
                                </ul>
                            </li>      
                            <c:set var="session" value="${sessionScope.login}" scope="application"/>
	        					<c:if test="${not empty session}">
	            					<li><a><c:out value="${session.name}님 "/></a></li>
		        					<li><a href="<c:url value='/member/mypage.do'/>">마이페이지</a></li>
		         					<li><a href="<c:url value='/member/actionLogout.do'/>">로그아웃</a></li>
		        				</c:if>
		        				<c:if test="${empty session}">
		        					<li><a href="<c:url value='/member/login.do'/>">로그인</a></li>
		      					 </c:if>         	                      	     
                        </ul>                 
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>

            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->