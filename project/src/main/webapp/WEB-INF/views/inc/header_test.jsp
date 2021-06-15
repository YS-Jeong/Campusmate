<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">



<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>CAMPUS MATE</title>
<!--

Lava Landing Page

https://templatemo.com/tm-540-lava-landing-page

-->

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">

    <link rel="stylesheet" href="../assets/css/templatemo-lava.css">

    <link rel="stylesheet" href="../assets/css/owl-carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="<c:url value='/index.do'/>" class="logo">
                          CAMPUS MATE
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="<c:url value='/main.do'/>">HOME</a></li>
                        <li class="submenu">
                                <a href="javascript:;">캠퍼스 데이트</a>
                                <ul>
                                    <li><a href="<c:url value='/match/match_intro.do'/>">소개</a></li>
                                    <li><a href="<c:url value='/match/match_join.do'/>">매칭 등록</a></li>
                                    <li><a href="<c:url value='/match/match_modify.do'/>">매칭 수정</a></li>
                                    <li><a href="<c:url value='/match/matching.do'/>">결과 확인</a></li>
                                </ul>
                            </li>
                            </li>
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
                 	         <li class="scroll-to-section"><a href="" class="menu-item">마이페이지</a></li>
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
    
    <!-- jQuery -->
    <script src="../assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="../assets/js/popper.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="../assets/js/owl-carousel.js"></script>
    <script src="../assets/js/scrollreveal.min.js"></script>
    <script src="../assets/js/waypoints.min.js"></script>
    <script src="../assets/js/jquery.counterup.min.js"></script>
    <script src="../assets/js/imgfix.min.js"></script>

    <!-- Global Init -->
    <script src="../assets/js/custom.js"></script>

