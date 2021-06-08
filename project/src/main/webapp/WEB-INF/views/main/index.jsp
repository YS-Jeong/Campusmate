<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>CAMPUSMATE</title>
	<link rel="icon" href="./img/Logo.PNG">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="./css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="./css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="./css/bootstrap.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="./css/owl.carousel.min.css">
	<link rel="stylesheet" href="./css/owl.theme.default.min.css">

	<link rel="stylesheet" href="./css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
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
				<a class="fh5co-logo" href="<c:url value='./index.do'/>">CAMPUSMATE</a>
			</div>
			<nav id="fh5co-main-nav" role="navigation" class="menu">
				<div>
					<ul>
						<li><a href="<c:url value='./index.do'/>" class="active">Home</a></li>
						<li><a href="#none">CAMPUSDATE</a>
							<ul class ="submenu">
								<li><a href="<c:url value='./match/match_intro.do'/>">소개</a></li>
								<li><a href="<c:url value='./match/match_join.do'/>">매칭등록</a></li>
								<li><a href="<c:url value='./match/match_modify.do'/>">매칭수정</a></li>
								<li><a href="<c:url value='./match/matching.do'/>">매칭하기</a></li>
							</ul>
						</li>
						<li><a href="#none">CAMPUSGROUP</a>
							<ul class ="submenu">
								<li><a href="<c:url value='./group/circle_list.do'/>">동아리</a></li>
								<li><a href="<c:url value='./group/study_list.do'/>">스터디</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>	
	<div class="owl-carousel owl-carousel1 owl-carousel-fullwidth fh5co-light-arrow animate-box" data-animate-effect="fadeIn">
		<div class="item"><a href="#none" class="image-popup"><img src="img/ku_panorama.jpg" alt="image"></a></div>
		<div class="item"><a href="#none" class="image-popup"><img src="img/ynu_panorama.jpg" alt="image"></a></div>
		<div class="item"><a href="#none" class="image-popup"><img src="img/knu_panorama.jpg" alt="image"></a></div>
	</div>

	<div id="fh5co-intro-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h2>여기에 어떤 문구를 넣을지 생각해 봅시다.</h2>
					<p>여기에 어떤 문구를 넣을지 생각해 봅시다.</a></p>
				</div>
			</div>
		</div>
	</div><!-- end fh5co-intro-section -->
	<div id="fh5co-common-section">
		<div class="container">
			<div class="heading-section text-center">
				<h2>여기에 어떤 문구를 넣을지 생각해 봅시다.</h2>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="col-md-6 col-sm-6 services-num services-num-text-right">
						<span class="number-holder">01</span>
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<p>여기에 어떤 문구를 넣을지 생각해 봅시다.</p>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 services-num">
						<span class="number-holder">02</span>
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<p>여기에 어떤 문구를 넣을지 생각해 봅시다.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div><!-- end fh5co-common-section -->
	<div class="fh5co-parallax" style="background-image: url(img/hero-1.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
					<div class="fh5co-intro fh5co-table-cell">
						<h1 class="text-center">여기에 어떤 문구를 넣을지 생각해 봅시다.</h1>
						<p>여기에 어떤 문구를 넣을지 생각해 봅시다.</a></p>
					</div>
				</div>
			</div>
		</div>
	</div><!-- end: fh5co-parallax -->
	<div id="fh5co-services-section">
		<div class="container">
			<div class="heading-section text-center">
				<h2>여기에 어떤 문구를 넣을지 생각해 봅시다.</h2>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="fh5co-services-right">
						<div class="fh5co-table2 text-center">
							<div class="fh5co-table-cell2">
								<i class="icon-heart3"></i>
							</div>
						</div>
						<div class="holder-section">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<p>여기에 어떤 문구를 넣을지 생각해 봅시다.</p>
						</div>
					</div>
					<div class="fh5co-services-right">
						<div class="fh5co-table2 fh5co-table2-color-2 text-center">
							<div class="fh5co-table-cell2">
								<i class="icon-laptop"></i>
							</div>
						</div>
						<div class="holder-section">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<p>여기에 어떤 문구를 넣을지 생각해 봅시다.</p>
						</div>
					</div>
					<div class="fh5co-services-right">
						<div class="fh5co-table2 fh5co-table2-color-3 text-center">
							<div class="fh5co-table-cell2">
								<i class="icon-video"></i>
							</div>
						</div>
						<div class="holder-section">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<p>여기에 어떤 문구를 넣을지 생각해 봅시다.</p>
						</div>
					</div>
				</div>

				<div class="col-md-4 text-center">
					<div class="fhco-hero2">
						<img class="img-responsive" src="img/iphone6.png" alt="iphone6">
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="fh5co-services">
						<div class="fh5co-table2 fh5co-table2-color-4 text-center">
							<div class="fh5co-table-cell2">
								<i class="icon-mobile"></i>
							</div>
						</div>
						<div class="holder-section">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<p>여기에 어떤 문구를 넣을지 생각해 봅시다.</p>
						</div>
					</div>
					<div class="fh5co-services">
						<div class="fh5co-table2 fh5co-table2-color-5 text-center">
							<div class="fh5co-table-cell2">
								<i class="icon-gears"></i>
							</div>
						</div>
						<div class="holder-section">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<p>여기에 어떤 문구를 넣을지 생각해 봅시다.</p>
						</div>
					</div>
					<div class="fh5co-services">
						<div class="fh5co-table2 fh5co-table2-color-6 text-center">
							<div class="fh5co-table-cell2">
								<i class="icon-piechart"></i>
							</div>
						</div>
						<div class="holder-section">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<p>여기에 어떤 문구를 넣을지 생각해 봅시다.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div><!-- end: fh5co-services-section -->
	<div id="fh5co-featured-work-section">
		<div class="container-fluid">
			<div class="heading-section text-center">
				<h2>Our Projects</h2>
			</div>
			<div class="owl-carousel owl-carousel2">
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="img/portfolio_pic1.jpg" alt="image">
					<a href="#" class="pop-up-overlay text-center">
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<span>여기에 어떤 문구를 넣을지 생각해 봅시다.</span>
						</div>
					</a>
				</div>
				<div class="item">
					<img src="img/portfolio_pic2.jpg" alt="image">
					<a href="#" class="pop-up-overlay pop-up-overlay-color-2 text-center">
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<span>여기에 어떤 문구를 넣을지 생각해 봅시다.</span>
						</div>
					</a>
				</div>
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="img/portfolio_pic3.jpg" alt="image">
					<!-- </a> -->
					<a href="#" class="pop-up-overlay pop-up-overlay-color-3 text-center">
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<span>여기에 어떤 문구를 넣을지 생각해 봅시다.</span>
						</div>
					</a>
				</div>
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="img/portfolio_pic4.jpg" alt="image">
					<!-- </a> -->
					<a href="#" class="pop-up-overlay pop-up-overlay-color-4 text-center">
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<span>여기에 어떤 문구를 넣을지 생각해 봅시다.</span>
						</div>
					</a>
				</div>
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="img/portfolio_pic5.jpg" alt="image">
					<!-- </a> -->
					<a href="#" class="pop-up-overlay text-center">
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<span>여기에 어떤 문구를 넣을지 생각해 봅시다.</span>
						</div>
					</a>
				</div>
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="img/portfolio_pic6.jpg" alt="image">
					<!-- </a> -->
					<a href="#" class="pop-up-overlay pop-up-overlay-color-2 text-center">
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<span>여기에 어떤 문구를 넣을지 생각해 봅시다.</span>
						</div>
					</a>
				</div>
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="img/portfolio_pic7.jpg" alt="image">
					<!-- </a> -->
					<a href="#" class="pop-up-overlay text-center">
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<span>여기에 어떤 문구를 넣을지 생각해 봅시다.</span>
						</div>
					</a>
				</div>
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="img/portfolio_pic8.jpg" alt="image">
					<!-- </a> -->
					<a href="#" class="pop-up-overlay pop-up-overlay-color-3 text-center">
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<span>여기에 어떤 문구를 넣을지 생각해 봅시다.</span>
						</div>
					</a>
				</div>
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="img/portfolio_pic9.jpg" alt="image">
					<!-- </a> -->
					<a href="#" class="pop-up-overlay pop-up-overlay-color-4 text-center">
						<div class="desc">
							<h3>여기에 어떤 문구를 넣을지 생각해 봅시다.</h3>
							<span>여기에 어떤 문구를 넣을지 생각해 봅시다.</span>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div><!-- end fh5co-featured-work-section -->
	<div id="fh5co-blog-section">
		<div class="container">
			<div class="heading-section text-center">
				<h2>여기에 어떤 문구를 넣을지 생각해 봅시다.</h2>
			</div>
			<div class="row">
				<div class="col-md-4 blog-section">
					<span>03 <small>July 2016</small></span>
					<h3><a href="#">여기에 어떤 문구를 넣을지 생각해 봅시다.</a></h3>
					<p>Far far away, behind the word mountains, far from the countries Vokalia, there live the blind texts.</p>
					<a class="btn btn-primary" href="#">Read More</a>
				</div>
				<div class="col-md-4 blog-section">
					<span>02 <small>July 2016</small></span>
					<h3><a href="#">Mourntains countries Vokalia</a></h3>
					<p>Far far away, behind the word mountains, far from the countries Vokalia, there live the blind texts.</p>
					<a class="btn btn-primary" href="#">Read More</a>
				</div>
				<div class="col-md-4 blog-section">
					<span>01 <small>July 2016</small></span>
					<h3><a href="#">Mourntains countries Vokalia</a></h3>
					<p>Far far away, behind the word mountains, far from the countries Vokalia, there live the blind texts.</p>
					<a class="btn btn-primary" href="#">Read More</a>
				</div>
			</div>
		</div>
	</div><!-- end: fh5co-blog-section -->
	<div class="fh5co-parallax" style="background-image: url(img/hero-2.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
					<div class="fh5co-intro fh5co-table-cell">
						<h1 class="text-center">Less is more</h1>
						<p>Made with love by the fine folks at <a href="http://freehtml5.co">FreeHTML5.co</a></p>
					</div>
				</div>
			</div>
		</div>
	</div><!-- end: fh5co-parallax -->
	<footer>
		<div id="footer" class="fh5co-border-line">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center">
						<p>Copyright(c) Light. All Rights Reserved. <br>Made with <i class="icon-heart3 love"></i> by 3rd generation of HUSTAR
						<br>Ko-Sujin, Kim-Doyeon, Jeong-Yeseong. 
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	</body>
</html>

