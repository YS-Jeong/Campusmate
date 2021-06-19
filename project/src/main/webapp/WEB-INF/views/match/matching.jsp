<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>

<style>
.center-lo{
   width:50%;
    margin: 0 auto;
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
}
.loging{
  width: 50%;
  height: 100px;
  margin: 0 auto;
  text-align: center;
  position: relative;
}
.loging div{
  background: blue;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  position: absolute;
  opacity: 1;
  animation-name: loding;
  animation-duration: 2s;
  animation-iteration-count: infinite;
}
.loging #load1{
  left: 0px;
  }
.loging #load2{
  left: 35px;
  animation-delay: 0.2s;
}
.loging #load3{
  left: 75px;
  animation-delay: 0.4s;
}
.loging #load4{
  left: 115px;
  animation-delay: 0.6s;
}
.loging #load5{
  left: 155px;
  animation-delay: 0.8s;
}
@keyframes loding{
  0%{
    top: 0;
  }
  50%{
    top:70px;
    opacity: .5;
    background: red;
  }
  100%{
    opacity: .5;
    top: 0;
    opacity: 1;
  }
}
</style>
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>

<body>

<div class="center-lo">
        <div class="loging">
        <div id="load1"></div>
        <div id="load2"></div>
        <div id="load3"></div>
        <div id="load4"></div>
        <div id="load5"></div>
        <a>매칭중입니다.</a>
      </div>
</div>


</body>






<script>
setTimeout("location.href='/match/matching.do'",2500);
</script>
