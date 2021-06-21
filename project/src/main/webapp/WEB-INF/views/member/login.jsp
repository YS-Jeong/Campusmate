<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<body>

<%@ include file="/WEB-INF/views/inc/menu.jsp" %>

<div class="login-box">
		
		<form method="post" name="frm" action="<c:url value='/member/actionLogin.do'/>">
			<div class="login">
				<ul>
					<li class="login-logo">CAMPUSMATE</li>
					<li>
						<input type="text" name="st_id" placeholder="학번">
					</li>
					<li>
						<input type="password" name="password" placeholder="비밀번호">
					</li>
					<li>
						<button type="button" onClick="actionLoginAsync();">로그인</button>
					</li>
				</ul>
			</div>
		
			<div class="login-btn">
				<a href="<c:url value='/member/join.do'/>">회원가입</a>
			</div>
		</form>	
	</div>
		
<script>
var msg='<c:out value="${msg}"/>';
if(msg!=''){
   alert(msg);
}

function actionLoginAsync(){
    var st_id = document.frm.st_id.value;
    var password = document.frm.password.value;
    
    console.log ("id = " + st_id ,"password = " + password);
 
 $.ajax({
    type:'POST',
    url: '<c:url value="/member/actionLoginAsync.do"/>',
    dataType:'JSON',
    data:{"st_id" : st_id, "password" : password},
    success : function(data){
       console.log(data);
       if(data.login=="true"){
          location.href='<c:url value ="/index.do"/>';
       }else{
          alert('로그인에 실패하였습니다.');
       }
    },
    error:function(jqXHR,textStatus,errorThrown){
       console.log(textStatus);
    }
 });
}
</script>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

</body>

</html>