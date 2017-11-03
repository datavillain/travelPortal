<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복 체크</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);

</style>
<script src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	function closeOk() {
		opener.document.FormEmp.mempw.focus();
		opener.document.FormEmp.ckuid.value = "0";
		opener.document.FormEmp.uid2.value = "${message}";
		self.close();
	}
	
	function closeNg() {
		opener.document.FormEmp.memid.select();
		opener.document.FormEmp.ckuid.value = "1";
		self.close();
	}
	
</script>
</head>
<body>
	<c:choose>
		<c:when test="${idCount == '0'}">
			${message} 는 사용가능한 ID 입니다.
			<button onclick ="closeOk()">확인</button>
		</c:when>	
		<c:otherwise>
			${message} 는 중복된 ID 입니다.
			<button onclick="closeNg()">확인</button>
		</c:otherwise>	
	</c:choose>
</body>
</html>