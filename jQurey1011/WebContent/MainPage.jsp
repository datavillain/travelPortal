<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행정보 검색 포털 화개장터</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link href="css/JoinMember.css" rel="stylesheet" >
<link href="css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
		body {
			margin: 0px;
			padding: 0px;
		}
		
		#footer {
			margin-top: 30px;
		}
	
		#footer  * {
			font-family: 'Jeju Hallasan', serif;
			font-size: 12px;
			line-height: normal;
			list-style: none;
			color:#8C8C8C;
			text-decoration: none;
		}
		
		#footer> ul{
			margin: 0 auto 9px;
			text-align: center;
		}
		#footer > ul > li:first-child{
			border-left:0px!important;
		}
		
		#footer> ul >li	{
			display: inline;
			padding: 0 5px 0 7px;
			border-left: 1px solid #dadada;
		}
		
		#dropSpace {
			width: 100%;
			height: 110px;
			display: block;
			text-align: right;
			margin: 20px 0 10px 0;
		}
		
		.show_img {
			border-radius: 10px;
		}
		
		.menu_fix {
			position: fixed;
			top:0px;
			width: 100%;
			z-index:999;
		}
		
		.fixed_menu {
			width: 100%;
			height: 180px;
			background-color: white;
		}
		
	</style>
<script src="js/jquery-3.2.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		var navfix = $('.fixed_menu').offset();
		$(window).scroll(function(){
			if($(document).scrollTop() > navfix.top) {
				$('.fixed_menu').addClass('menu_fix');
			} else  {
				$('.fixed_menu').removeClass('menu_fix');
			}
		});
		
	});
</script>
</head>
<body>
	<header>
		<div class = "fixed_menu">
			<%@ include file="includeHead.jsp"  %>
		</div>	
	</header>
	
	
	
	<div id = "dropSpace">
	</div>
	
	
	
<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
	
	<!--페이지-->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<!--페이지-->

	<div class="carousel-inner">
		<!--슬라이드1-->
		<div class="item active"> 
			<img class = "show_img" src="img/city.png" style="width:100%" alt="First slide">
			<div class="container">
				<div class="carousel-caption">
				</div>
			</div>
		</div>
		<!--슬라이드1-->

		<!--슬라이드2-->
		<div class="item"> 
			<img class = "show_img" src="img/whitecity.jpg" style="width:100%" data-src="" alt="Second slide" >
			<div class="container">
				<div class="carousel-caption">
				</div>
			</div>
		</div>
		<!--슬라이드2-->
		
		<!--슬라이드3-->
		<div class="item"> 
			<img class = "show_img" src="img/sea_night.jpg" style="width:100%" data-src="" alt="Third slide" >
			<div class="container">
				<div class="carousel-caption">
				</div>
			</div>
		</div>
		<!--슬라이드3-->
	</div>
	
	<!--이전, 다음 버튼-->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>
			<footer>
			<div id="footer">
				<ul>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보 처리방법</a></li>
					<li><a href="#">운영정책</a></li>
					<li><a href="#">공지사항</a></li>
				</ul>
			</div>	
		</footer>

</body>
</html>