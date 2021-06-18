<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>

<body>
<%@ include file="/WEB-INF/views/inc/menu.jsp" %>
</body>

<%@ include file="/WEB-INF/views/inc/footer.jsp" %>


<script>
var msg = '<c:out value="${msg}"/>';
if(msg != ''){
   alert(msg);
} //매칭 등록이 완료되었습니다. alert 메세지 출력
</script>
