<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv ='Refresh' content ='5; url =MainPage.jsp'>
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);
	body {
			margin: 0px;
			padding: 0px;
		}

	#main_box {
		width: 500px;
		height: 600px;
		box-sizing: border box;
		margin: 200px auto;
		position: relative;
	}

	#welcome_img > span {
		font-family: 'Jeju Hallasan', serif;
		display: inline-block;
		width: 290px;
		position: absolute;
		left: 5px;
		top: 80px;
		color: #2E294E;
	}
	
	#welcome_img > img {
		position: absolute;
		right: 0px;
		top: 50px;
	}

	#move_alert {
		width: 500px;
		height: 250px;
		position: absolute;
		bottom: 0px;
	}
	
	.another_color1 {
		font-family: 'Jeju Hallasan', serif;
		display: block;
		font-size: 40px;
		color: #f9a11b;
		font-weight: 800;
		text-align: center;
		margin-top: 30px; 
	}

	.another_color2 {
		font-family: 'Jeju Hallasan', serif;
		display: block;
		font-size: 30px;
		color: #2E294E;
		font-weight: 800;
		text-align: center;
		margin-top:  30px; 
	}
	
	
</style>
<script src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
		
</script>
</head>
<body>
	<% String name = request.getParameter("memname"); %>
	<div id = "main_box">
		<div id ="welcome_img">
			<span>여행정보 사이트 화개장터에 <br> 가입해 주셔서 감사합니다.<br><br>
					여행지, 축제, 숙박시설, 기념품 검색을 통해 <br>
					당신만의 여행 패키지를 만들어보세요!
			</span>
			<img src = "img/welcomeman.JPG" style="width: 200px; height: 280px;">
		</div>
		<div id = "move_alert">
				<span class = "another_color1"><%=name%> 님환영합니다.</span>
			<span class = "another_color2"> 5초 후 메인페이지로 이동 합니다.</span>		
		</div>
	</div>



</body>
</html>