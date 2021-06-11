<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<body>
<!--콘텐츠 시작-->
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>
   
   <div class="owl-carousel owl-carousel1 owl-carousel-fullwidth fh5co-light-arrow animate-box" data-animate-effect="fadeIn">
      <div class="item"><a href="#none" class="image-popup"><img src="${pageContext.request.contextPath}/img/ku_panorama.jpg" alt="image"></a></div>
      <div class="item"><a href="#none" class="image-popup"><img src="${pageContext.request.contextPath}/img/ynu_panorama.jpg" alt="image"></a></div>
      <div class="item"><a href="#none" class="image-popup"><img src="${pageContext.request.contextPath}/img/knu_panorama.jpg" alt="image"></a></div>
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
   <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
   <!-- jQuery Easing -->
   <script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
   <!-- Bootstrap -->
   <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
   <!-- Waypoints -->
   <script src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
   <!-- Owl carousel -->
   <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
   <!-- Stellar -->
   <script src="${pageContext.request.contextPath}/js/jquery.stellar.min.js"></script>

   <!-- Main JS (Do not remove) -->
   <script src="${pageContext.request.contextPath}/js/main.js"></script>

   </body>
</html>
