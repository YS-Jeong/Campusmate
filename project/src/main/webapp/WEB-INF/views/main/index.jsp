<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>

<html>
<style>

#promotion > div > div > div.right-text.offset-lg-1.col-lg-6.col-md-12.col-sm-12.mobile-bottom-fix > ul > li:nth-child(1) > img{margin:13px; height:100px; width:100px;}
#promotion > div > div > div.right-text.offset-lg-1.col-lg-6.col-md-12.col-sm-12.mobile-bottom-fix > ul > li:nth-child(2) > img{margin:13px; height:100px; width:100px;}
#promotion > div > div > div.right-text.offset-lg-1.col-lg-6.col-md-12.col-sm-12.mobile-bottom-fix > ul > li:nth-child(3) > img{margin:13px; height:100px; width:100px;}
</style>
<body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <!-- ***** Preloader End ***** -->
    
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>
     
    <!-- ***** Welcome Area Start ***** -->
    <div class="welcome-area" id="welcome">

        <!-- ***** Header Text Start ***** -->
        <div class="header-text">
            <div class="container">
                <div class="row">
                    <div class="left-text col-lg-6 col-md-12 col-sm-12 col-xs-12"
                        data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                        <h1><em>CAMPUSMATE</em></h1>
                        <p><a class="title_color">경북대학교 · 영남대학교 · 계명대학교 </a> 커뮤니티 사이트 <a class="title_color">캠퍼스 메이트</a></br>
                        	전국 대학교를 연결하는 커뮤니티의 첫 출발점으로 도약 하겠습니다.</p> 
                        <a href="#about" class="main-button-slider">자세히 알아보기</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Header Text End ***** -->
    </div>
    <!-- ***** Welcome Area End ***** -->

    <!-- ***** Features Big Item Start ***** -->
    <section class="section" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12"
                    data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                    <div class="features-item">
                        <div class="features-icon">
                            <h2>01</h2>
                            <img src="assets/images/date.png" alt="">
                            <h4>CAMPUS DATE</h4>
                            <p>당신의 소중한 메이트를 매칭 해드릴게요 <br>운명의 상대를 만나보세요!</p>
                            <a href="<c:url value='/match/match_intro.do'/>" class="main-button">
                                	소개화면으로 ->
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12"
                    data-scroll-reveal="enter bottom move 30px over 0.6s after 0.4s">
                    <div class="features-item">
                        <div class="features-icon">
                            <h2>02</h2>
                            <img src="assets/images/circle.png" alt="">
                            <h4>CAMPUS CLUB</h4>
                            <p>이곳에서 환상의 짝궁을 찾아<br> 최고의 동아리를 만들어보세요. </p>
                           <a href="<c:url value='/group/circle_list.do'/>" class="main-button">
                                	동아리 게시판 ->
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12"
                    data-scroll-reveal="enter right move 30px over 0.6s after 0.4s">
                    <div class="features-item">
                        <div class="features-icon">
                            <h2>03</h2>
                            <img src="assets/images/study.png" alt="">
                            <h4>CAMPUS STUDY</h4>
                            <p>혼자는 어려워도 함께라면 해낼수 있어요<br>스터디를 만들어 함께 열공모드로!</p>
                            <a href="<c:url value='/group/study_list.do'/>" class="main-button">
                               	 스터디 게시판 ->
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Features Big Item End ***** -->

    <div class="left-image-decor"></div>

    <!-- ***** Features Big Item Start ***** -->
    <section class="section" id="promotion">
        <div class="container">
            <div class="row">
                <div class="left-image col-lg-5 col-md-12 col-sm-12 mobile-bottom-fix-big"
                    data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                    <img src="assets/images/사람들.png" class="rounded img-fluid d-block mx-auto" alt="App">
                </div>
                <div class="right-text offset-lg-1 col-lg-6 col-md-12 col-sm-12 mobile-bottom-fix">
                    <ul>
                        <li data-scroll-reveal="enter right move 30px over 0.6s after 0.4s">
                            <img src="assets/images/knu.jpg" alt="">
                            <div class="text">
                                <h4 style="font-weight:bold">경북대학교</h4>
                                <p>:: Located in 80 DaehakroBukgu,  Daegu, Republic of Korea Established in <span style="color: orange; font-weight: bold;">1946</span></p>
                            </div>
                        </li>
                        <li data-scroll-reveal="enter right move 30px over 0.6s after 0.5s">
                            <img src="assets/images/yu.png" alt="">
                            <div class="text">
                                <h4 style="font-weight:bold">영남대학교</h4>
                                <p>:: Located in 280 Daehak-Ro, Gyeongsan, Gyeongbuk 38541 Established in <span style="color: orange; font-weight: bold;">1947</span></p>
                            </div>
                        </li>
                        <li data-scroll-reveal="enter right move 30px over 0.6s after 0.6s">
                            <img src="assets/images/kmu.JPG" alt="">
                            <div class="text">
                                <h4 style="font-weight:bold">계명대학교</h4>
                                <p>:: Located in 1095 Dalgubeol-daero, Dalseo-gu, Daegu 42601 Established in <span style="color: orange; font-weight: bold;">1954</span> </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Features Big Item End ***** -->

    <div class="right-image-decor"></div>

    <!-- ***** Testimonials Starts ***** -->
    <section class="section" id="testimonials">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="center-heading">
                        <h2>CONTACT <em>INFORMATION</em></h2>
                        <p>
						저희는 대구 경북 대학생들을 위한 커뮤니티를 만드는 웹페이지 개발자들입니다.<br>
						더 많은 서비스를 여러분께 지원 할 수 있도록 여러분들의 따뜻한 피드백 기다리고 있겠습니다.
						 </p>
                    </div>
                </div>
                <div class="col-lg-10 col-md-12 col-sm-12 mobile-bottom-fix-big"
                    data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                    <div class="owl-carousel owl-theme">
                        <div class="item service-item">
                            <div class="author">
                                <i><img src="assets/images/Jeongyeseong-crop.jpg" alt="Author One"></i>
                            </div>
                            <div class="testimonial-content">
                                <ul class="stars">
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                </ul>
                                <h4>정예성</h4>
                                <p>“저는 당신의 청춘을 푸르게 물들이기 위해 노력하는 캠퍼스 메이트 개발자 정예성입니다.”</p>
                                <span>Developer<span>
                            </div>
                        </div>
                        <div class="item service-item">
                            <div class="author">
                                <i><img src="assets/images/Kimdoyeon-crop.jpg" alt="Second Author"></i>
                            </div>
                            <div class="testimonial-content">
                                <ul class="stars">
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                </ul>
                                <h4>김도연</h4>
                                <p>"저는 당신의 대학 시절의 가장 찬란한 순간을 선물하기 위해 <br> 최선을 다하는 개발자 김도연입니다."</p>
                                <span>Developer</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Testimonials Ends ***** -->

	<!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script>

    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>
    <script>
    var msg = '<c:out value="${msg}"/>';
    if(msg != ''){
       alert(msg);
    }
    </script>
</body>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %> 
</html>