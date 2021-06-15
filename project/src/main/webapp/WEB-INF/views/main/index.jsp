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

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-lava.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">
    
    <style>
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
	p{
		font-size:15px;
		font-family:'Noto Sans KR',sans-serif;
	}
	</style>

</head>

 <%@ include file="/WEB-INF/views/inc/login.jsp" %>
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
                            <li class="scroll-to-section"><a href="<c:url value='/index.do'/>">HOME</a></li>
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
                 	         <li class="scroll-to-section"><a href="<c:url value='/member/mypage.do'/>">마이페이지</a></li>
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
     


    <!-- ***** Welcome Area Start ***** -->
    <div class="welcome-area" id="welcome">


        <!-- ***** Header Text Start ***** -->
        <div class="header-text">
            <div class="container">
                <div class="row">
                    <div class="left-text col-lg-6 col-md-12 col-sm-12 col-xs-12"
                        data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                        <h1><em>CAMPUS MATE</em></h1>
                        <p><a href="#">경북대학교 · 영남대학교 · 계명대학교 </a> 커뮤니티 사이트 <a href="#">캠퍼스 메이트</a></br>
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
                    <img src="assets/images/left-image.png" class="rounded img-fluid d-block mx-auto" alt="App">
                </div>
                <div class="right-text offset-lg-1 col-lg-6 col-md-12 col-sm-12 mobile-bottom-fix">
                    <ul>
                        <li data-scroll-reveal="enter right move 30px over 0.6s after 0.4s">
                            <img src="assets/images/about-icon-01.png" alt="">
                            <div class="text">
                                <h4>Vestibulum pulvinar rhoncus</h4>
                                <p>Please do not redistribute this template ZIP file for a download purpose. You may <a
                                rel="nofollow" href="https://templatemo.com/contact" target="_parent">contact</a> us for
                            additional licensing of our template or to get a PSD file.</p>
                            </div>
                        </li>
                        <li data-scroll-reveal="enter right move 30px over 0.6s after 0.5s">
                            <img src="assets/images/about-icon-02.png" alt="">
                            <div class="text">
                                <h4>Sed blandit quam in velit</h4>
                                <p>You can <a rel="nofollow"
                                        href="https://templatemo.com/tm-540-lava-landing-page">download Lava
                                        Template</a> from our website. Duis viverra, ipsum et scelerisque placerat, orci
                                    magna consequat ligula.</p>
                            </div>
                        </li>
                        <li data-scroll-reveal="enter right move 30px over 0.6s after 0.6s">
                            <img src="assets/images/about-icon-03.png" alt="">
                            <div class="text">
                                <h4>Aenean faucibus venenatis</h4>
                                <p>Phasellus in imperdiet felis, eget vestibulum nulla. Aliquam nec dui nec augue
                                    maximus porta. Curabitur tristique lacus.</p>
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
                        <h2>What They Think <em>About Us</em></h2>
                        <p>Suspendisse vitae laoreet mauris. Fusce a nisi dapibus, euismod purus non, convallis odio.
                            Donec vitae magna ornare, pellentesque ex vitae, aliquet urna.</p>
                    </div>
                </div>
                <div class="col-lg-10 col-md-12 col-sm-12 mobile-bottom-fix-big"
                    data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                    <div class="owl-carousel owl-theme">
                        <div class="item service-item">
                            <div class="author">
                                <i><img src="assets/images/testimonial-author-1.png" alt="Author One"></i>
                            </div>
                            <div class="testimonial-content">
                                <ul class="stars">
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                </ul>
                                <h4>Jonathan Smart</h4>
                                <p>“Nullam hendrerit, elit a semper pharetra, ipsum nibh tristique tortor, in tempus
                                    urna elit in mauris.”</p>
                                <span>Besta CTO</span>
                            </div>
                        </div>
                        <div class="item service-item">
                            <div class="author">
                                <i><img src="assets/images/testimonial-author-1.png" alt="Second Author"></i>
                            </div>
                            <div class="testimonial-content">
                                <ul class="stars">
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                </ul>
                                <h4>Martino Tino</h4>
                                <p>“Morbi non mi luctus felis molestie scelerisque. In ac libero viverra, placerat est
                                    interdum, rhoncus leo.”</p>
                                <span>Web Analyst</span>
                            </div>
                        </div>
                        <div class="item service-item">
                            <div class="author">
                                <i><img src="assets/images/testimonial-author-1.png" alt="Author Third"></i>
                            </div>
                            <div class="testimonial-content">
                                <ul class="stars">
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                </ul>
                                <h4>George Tasa</h4>
                                <p>“Fusce rutrum in dolor sit amet lobortis. Ut at vehicula justo. Donec quam dolor,
                                    congue a fringilla sed, maximus et urna.”</p>
                                <span>System Admin</span>
                            </div>
                        </div>
                        <div class="item service-item">
                            <div class="author">
                                <i><img src="assets/images/testimonial-author-1.png" alt="Fourth Author"></i>
                            </div>
                            <div class="testimonial-content">
                                <ul class="stars">
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                </ul>
                                <h4>Sir James</h4>
                                <p>"Fusce rutrum in dolor sit amet lobortis. Ut at vehicula justo. Donec quam dolor,
                                    congue a fringilla sed, maximus et urna."</p>
                                <span>New Villager</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Testimonials Ends ***** -->


    <!-- ***** Footer Start ***** -->
    <footer id="contact-us">
        <div class="container">
            <div class="footer-content">
             </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="sub-footer">
                      	<p>Copyright(c) Light. All Rights Reserved. <br>Made with <i class="icon-heart3 love"></i> by 3rd generation of HUSTAR
						<br>Kim-Doyeon, Jeong-Yeseong. 
                    </div>
                </div>
            </div>
        </div>
    </footer>

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

</body>
</html>