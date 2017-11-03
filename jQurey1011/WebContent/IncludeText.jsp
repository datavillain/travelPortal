<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="kr">
	<head>
	<meta charset="UTF-8">
	<title>화개장터</title>

<style rel="stylesheet">
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);
body {
	margin: 0px;
	padding: 0px;
}

#wrap {
display: block;
display: -webkit-box;
display: -webkit-flex;
display: -ms-flexbox;
display: flex;
-webkit-box-align: center;
-webkit-align-items: center;
-ms-flex-align: center;
align-items: center;
-webkit-box-pack: center;
-webkit-justify-content: center;
-ms-flex-pack: center;
justify-content: center;
height: 80px;
font-size: 40px;
font-family: 'Jeju Hallasan', serif;
}

#wrap > a {
	text-decoration: none;
	color: black;
}

#app {
letter-spacing: 0.25em;
text-transform: uppercase;
}

</style>
</head>
<body>


<div id="wrap">
	<a href ="MainPage.jsp">
		<div id="app"></div>
	</a>
</div>


<script type="text/javascript">
	'use strict';
	var items = [
	    '여행을',
	    '행복하게',
	    '여행정보는',
	    '화 개 장 터 ★',
	];
	var app = document.getElementById('app');
	var count = 0;
	var index = 0;
	var typingEffect = function typingEffect() {
	    var text = items[index];
	    if (count < text.length) {
	        setTimeout(function () {
	            app.innerHTML += text[count];
	            count++;
	            typingEffect();
	        }, Math.floor(Math.random(10) * 100));
	    } else {
	        count = 0;
	        index = index + 1 < items.length ? index + 1 : 0;
	        setTimeout(function () {
	            app.innerHTML = '';
	            typingEffect();
	        }, 1500);  //텍스트 체인지 시간
	    }
	};
	typingEffect();
</script>
</body>
</html>
