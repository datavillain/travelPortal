<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행정보 검색 포털 화개장터</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/needpopup.min.css">
<link href="css/JoinMember.css" rel="stylesheet" >
<link href="css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css" rel ="stylesheet">
		body {
			margin: 0px;
			padding: 0px;
		}
		
		div {
			margin: 0px;
			padding: 0px;
		}
		
		#dropSpace {
			width: 100%;
			height: 110px;
			display: block;
		}
		
		#product_menu {
			width: 600px;
			height: 300px;
			margin: 0 auto;
		}
		
		#product_detail {
			width: 600px;
			height: 830px;
			margin: 0 auto;
			box-shadow: 10px 10px 10px #8b8687;
			border-radius: 10px;
			position: relative;
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
		
		#detail_img {
			width: 300px;
			height: 300px;
			display: inline-block;
			border-radius: 6px;
		}

		#detail_text {
			width: 300px;
			height: 280px;
			display: inline-block;
			float: right;
			position: absolute;
			top: 0px;
			right: 0px;
			box-sizing: border-box;
			border: solid 2px black;
			border-radius: 10px;
			box-shadow: 10px 10px 10px #8b8687;
			transform: rotate(5deg);
			background-color: white;
		}
		
		.text_div {
			display: block;
		  	position: relative;
		 	width: 280px;
		 	height: 100px;
		}
		
		#detail_box{
			overflow: auto;
			width: 280px;
			height: 50px;
		}
		
		 	
		.text_div a{
			display: inline-block;
   			border-radius: 5px;
   			text-decoration: none;
   			color: black;
		}
		
		.text_div a:HOVER {
			text-decoration: none;
		}
		
		.message_box {
		  	display: none;
		  	position: absolute;
		  	padding: 10px;
		  	-webkit-border-radius: 8px;
		  	-moz-border-radius: 8px;  
		  	border-radius: 8px;
		  	background: #333;
		  	color: #fff;
		  	top: 0px;
		  	right: -75px;
		}
		
		
		span:hover + p.message_box {
			  display: block;
			  text-decoration: none;
		}
		
		#rooms_exam {
			width: 550px;
			height: 340px;
			margin: 10px auto;
		}
		
		#festa_place {
			width: 550px;
			height: 150px;
			border: solid 3px gold;
			margin: 30px auto;
			border-radius: 10px;
			box-shadow: 10px 10px 10px #8b8687;
		}
		
		
		#myCarousel {
			width: 280px!important;
			height: 280px!important;
		}

		.show_img {
			border-radius: 10px;
		}
		
		.carousel-inner {
			border-radius: 10px;
			box-shadow: 5px 5px 5px gray;
			border: solid 2px black; 
		}
		
		.text_title {
			font-family: 'Jeju Hallasan', serif;
			margin-left: 10px; 
		}
		
		.text_div {
			margin-bottom: 2px;
			font-family: 'Jeju Hallasan', serif; 
			height: 50px;
			margin-left: 10px; 
		}
		
		.festa_key {
			display: inline-block;
			text-decoration: none;
			line-height: 25px;
			color: #30A9DE;
		}
		
		.festa_key:HOVER {
			text-decoration: none;
			color: #AACD6E;
		}
		
		.key_div {
			text-align: center;
			width: 70px;
			height: 25px;
			border: solid 2px gold;
			margin: 20px 5px 0px 5px;
			border-radius: 10px;
			box-shadow: 5px 5px 5px gray;
			transform: rotate(3deg);
			display: inline-block;
			font-family: 'Jeju Hallasan', serif; 
			font-size: 13px;
		}
		
		#festa_title {
			font-size: 18px;
			font-family: 'Jeju Hallasan', serif; 
			color: #AF4034;
			margin: 10px 0px 0px 10px;
		}
		
		.product_name > h3 {
			clear: both;
			color: #1ec0ff;
		}
	
		#product_img {
			width: 150px;
			height: 100px;
			border-radius: 10px;
		}
		
		
		#pdt_a  {
			font-family: 'Jeju Hallasan', serif;
			text-decoration: none;
			color: #F68657;
		}
		
		.item_list {
			height: 380px;
			margin-bottom: 20px;
		}
		
		.wrap {
		  margin:5px auto 0 auto;
		  width:170px;
		  display:flex;
		  align-items:space-around;
		  max-width:500px;
		  float: left;
		}
		
		.tile {
		  width: 150px;
		  height: 100px;
	 	  margin:10px auto; 
		  background-size:cover;
		  cursor:pointer;
		  transition: all 0.3s ease-out;
		  box-shadow: 0px 35px 77px -17px rgba(0,0,0,0.44);
		  overflow:hidden;
		  color:#5e5e5f;
		  font-family: 'Jeju Hallasan', serif;
		  border-radius: 10px;
		  transform: rotate(3deg);
		  border: solid 1.8px black;
		}
		
		.tile .text {
		  position:absolute;
		  padding:10px;
		  height:calc(100% - 60px);
		  height:calc(100% - 60px);
		}
		
		
		
		.tile h4 {
		  font-weight:100;
		  margin:0;
		  text-shadow: 2px 2px 10px rgba(0,0,0,0.3);
		  color: black;
		  font-size: 15px;
		}
		
		.tile p {
		  font-weight:200;
		  margin:10px 0 0 0;
		  line-height: 25px;
		  transform: translateX(-200px);
		  transition-delay: 0.2s;
		}
		
		.animate-text {
		  opacity:0;
		  transition: all 0.6s ease-in-out;
		}
		
		.tile:hover {
		box-shadow: 0px 35px 77px -17px rgba(0,0,0,0.64);
		transform:scale(1.05);
		}
		
		.tile:hover img {
		  opacity: 0.2;
		}
		
		.tile:hover .animate-text {
		  transform:translateX(0);
		  opacity:1;
		}
		
		
		@media (max-width: 1000px) {
		  .wrap {
		   flex-direction: column;
		    width:150px;
		  }
		}
				
		.img_box {
			border: solid 3px silver;
			border-radius: 10px;
			width: 550px;
			height: 300px;
			margin: 0px auto;
			padding: 5px 5px 5px 15px;
			box-shadow: 10px 10px 10px #8b8687;
		}
		
		
		
		
		
		#right_position {
			width: 540px;
			height: 800px;
			border-radius: 10px;
			box-shadow: 10px 10px 10px #8b8687;
			padding: 5px 5px;
			box-sizing : border-box;
			position: absolute;
			top: 0px;
			right: -98%;
			border: solid 2px gold;
			overflow: auto;
			display: none;
		}
		
		#right_position_title {
			width: 100%;
			height: 80px;
			font-family: 'Jeju Hallasan', serif;
			text-align: center;
			line-height: 80px;
			text-shadow : 10px 10px 10px #8b8687;
		}
		
		#right_position_img {
			display: inline-block;
			width: 155px;
			height: 130px;
			border: solid 2px black;
			margin: 8px 8px 8px 8px;
			box-shadow: 5px 5px 5px #8b8687;
			padding: 0px;
			box-sizing : border-box;
			position: relative;
		}
		
		
		#right_position_text {
			font-family: 'Jeju Hallasan', serif;
			width: 100%;
			height: 60px;
			position: absolute;
			bottom: 0px;
			background-color: white;
			opacity : 0.8; 
		}
		
		#right_position_text_subject{
			display: block;
			font-family: 'Jeju Hallasan', serif;
			color: black;
			margin-left: 3px;
		}
		
		#right_position_text_document{
			display: block;
			font-family: 'Jeju Hallasan', serif;
			color: black;
			overflow: auto;
			height: 32px;
			margin-left: 6px;
		}	
			
		#present_label {
			width: 350px;
			height: 40px;
			line-height: 30px;
			font-family: 'Jeju Hallasan', serif;
			font-size: 20px;
			font-weight: 300;
			color: #30A9DE;
		}	
		
		#all_rooms {
			display: inline-block;
			text-decoration: none;
			color: black;
		}	
		
		#right_position_close {
			display: inline-block;
			width: 50px;
			height: 50px;
			position: absolute;
			bottom: 0px;
			left: 50%;
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
			
		#left_position {
			position: fixed;
			top: 40%;
			left: 23%;
			z-index:100;
		}	
			
				nav {
		  font-family: 'Jeju Hallasan', serif;
		  font-size: 13px;
		  line-height: 1.5;
		  width: 200px;
		  box-shadow: 10px 10px 10px #8b8687;
		}
		
		.menu-item {
		  background: #fff;
		  width: 200px; 
		}
		
		/*Menu Header Styles*/
		.menu-item h4 {
		  font-family: 'Jeju Hallasan', serif;
		  border-bottom: 1px solid rgba(0,0,0,0.3);
		  border-top: 1px solid rgba(255,255,255,0.2);
		  color: black;
		  font-size: 15px;
		  font-weight: 500;
		  padding: 7px 12px;
		  margin: 0px!important;
		  
		  /*Gradient*/
		  background: #f6ea8c; /* Old browsers */
		  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a90329', endColorstr='#6d0019',GradientType=0 ); /* IE6-9 */
		}
		
		.menu-item h4:hover {  
		font-family: 'Jeju Hallasan', serif;
		  background: #c03546; /* Old browsers */
		  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cc002c', endColorstr='#6d0019',GradientType=0 ); /* IE6-9 */
		
		}
		
		.menu-item h4 a {
		  font-family: 'Jeju Hallasan', serif;
		  color: #f26d5b;
		  display: block;
		  text-decoration: none;
		  width: 170px;
		}
		
		/*ul Styles*/
		.menu-item ul {
		  font-family: 'Jeju Hallasan', serif;
		  background: #fff;
		  font-size: 13px;
		  line-height: 30px;
		  height: 0px;
		  list-style-type: none;
		  overflow: hidden;
		  padding: 0px;
		  margin: 0px;
		  
		  /*Animation*/
		  -webkit-transition: height 1s ease;
		  -moz-transition: height 1s ease;
		  -o-transition: height 1s ease;
		  -ms-transition: height 1s ease;
		  transition: height 1s ease;
		}
		
		
		.menu-item:hover ul {
		  height: 93px;
		  
		}
		
		.menu-item ul a {
		font-family: 'Jeju Hallasan', serif;
		  margin-left: 10px;
		  text-decoration: none;
		  color: #aaa;
		  display: block;
		  width: 180px;
		}
		
		/*li Styles*/
		.menu-item li {
		  border-bottom: 1px solid #eee;
		}
		
		.menu-item li:hover {
		  background: #eee;
		}
		

			.wrapper {
				width: 200px;
				height: 32px;
			    font-family: 'Jeju Hallasan', serif;
			    border-bottom: 1px solid rgba(0,0,0,0.3);
			    border-top: 1px solid rgba(255,255,255,0.2);
			    color: black;
			    font-size: 15px;
			    font-weight: 500;
			    margin: 0px!important;
			  
			    /*Gradient*/
			    background: #f6ea8c; /* Old browsers */
			    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a90329', endColorstr='#6d0019',GradientType=0 ); /* IE6-9 */
			}

			.wrapper h4:hover {  
				font-family: 'Jeju Hallasan', serif;
				background: #c03546; /* Old browsers */
				filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cc002c', endColorstr='#6d0019',GradientType=0 ); /* IE6-9 */
				
			}
			
			#modal_login {
				color: #f26d5b;
			}
			
			#modal_login:HOVER {
				text-decoration: none;
				color: #71226e;
			}
			
			p {
				font-size: 1.2em;
				line-height: 1.4;
				color: #343638;
				margin: 20px 0;
			}

			.needpopup {
			  border-radius: 6px;
			  box-shadow: 0 1px 5px 1px rgba(0, 0, 0, 1);
			}

			#input_id {
				width: 480px;
				height: 300px;
				margin: 10px auto;
				box-sizing: border-box;
			}
			#input_id input{
				border: none;
			}
			#input_id label {
				display: inline-block;
				font-family: 'Jeju Hallasan', serif;
				margin-bottom: 3px;
				width: 345px;
			}
			
			#input_button {
				width: 480px;
				height: 70px;
				text-align: center;
				line-height: 70px;
			}
		#input_joinUs {
			display: block;
			width: 345px;
			height: 60px;
			margin: 0 auto;
			border-bottom: solid thin silver;
		}
		
		#input_joinUs > input {
			width: 345px;
			height: 15px;
			line-height: 15px;
			border-style: none;
			margin-top: 15px;
		}
		
		#wrong_id {
			display: none;
			font-size: 12px;
			color: orange;
			margin-top: 15px;
		}
		
		#login_ad{
			font-family: 'Jeju Hallasan', serif;
			height: 100px;
			text-align: center;
		}	
	
		#hwagae {
			color: #F68657;
		}
		
		#join_mass {
			width: 480px;
			height: 100px;
			text-align: left;
			line-height: 100px;
			margin-bottom: 5px;
			text-align: center;
		}
		
		#join_mass span {
			font-family: 'Jeju Hallasan', serif;
			font-size: 40px;
			line-height: 130px;
			text-align: center;
		}
	
		#main_container{
			width: 480px;
			height: 500px;
			margin: 0 auto;
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
		
		
		$("#all_rooms").click(function(){
			$("#right_position").fadeIn(1300);
		});	
		
		$("#close_button").click(function(){
			$("#right_position").fadeOut(1500);
		});		
	});
	
$(document).on("click","#trans_data",function(){
		
		var 
		form = $("#form_id"),
		uid = $("#add1"),
		upw = $("#add2");
		
		var id = $.trim(uid.val());
		var pw = $.trim(upw.val());

		if(id == ""){
			uid.focus();
			var str = "ID를 입력해주세요.";
			$("#id_error").empty().append(str).css("color","red");
			$("#id_error").css("display","block");
			$("#id_error").css("margin-top","15px");
			$("#id_error").css("font-size","12px");
			return false;
		}else {
			$("#id_error").empty();
		}
		
		if(pw == "" ){
			upw.focus();
			var str = "PW를 입력해주세요.";
			$("#pw_error").empty().append(str).css("color","red");
			$("#pw_error").css("display","block");
			$("#pw_error").css("margin-top","15px");
			$("#pw_error").css("font-size","12px");
			return false;
		}else {
			$("#pw_error").empty();
		}
	
		form.submit();
	});
	
	
	
	
	
	
	
</script>
</head>
<body onload="document.body.scrollTop = document.cookie" onunload="document.cookie.body.scrollTop">
	<header>
		<div class = "fixed_menu">
			<%@ include file="includeHead.jsp"  %>
		</div>	
	</header>
	
	<div id = "dropSpace">
		
	</div>

	<div  id = "product_menu">
		<%@ include file="RollingInclude.jsp"  %>
	</div>
	
	<div id = "product_detail">
		<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>
		
			<div class="carousel-inner">
			
				<div class="item active"> 
					<img class = "show_img" src="img/cloud.jpg" style="width:280px; height: 280px;" alt="1">
				</div>
		
				<div class="item"> 
					<img class = "show_img" src="img/cloud2.jpg" style="width:280px; height: 280px;" data-src="" alt="2" >
				</div>
				
				<div class="item"> 
					<img class = "show_img" src="img/sunset.jpg" style="width:280px; height: 280px;" data-src="" alt="3" >
				</div>
				
				<div class="item"> 
					<img class = "show_img" src="img/river.JPG" style="width:280px; height: 280px;" data-src=""  alt= "4">
				</div>
				
				<div class="item"> 
					<img class = "show_img" src="img/sea.jpg" style="width:280px; height: 280px;" data-src="" alt="5" >
				</div>
				
			</div>
		</div>
		
		
		
		<div id = "detail_text">
			<c:choose>
				<c:when test="${empty sessionScope.moveProduct}">
				<h3 class = "text_title">${sessionScope.moveProduct.p_name}</h3>
				<hr>
				<div class = "text_div" >
					<a href ="${sessionScope.moveProduct.p_url}">
						<span>지역설명</span>
							<p class ="message_box">${sessionScope.moveProduct.p_location}</p>
					</a>
						<div id = "detail_box">설명설명 김설명</div>
				</div>
				<br>
				<br>
				
				<div class = "text_div" >
					<a href ="${sessionScope.moveProduct.p_url}">
						<span>축제/볼거리/행사</span>
							<p class ="message_box">팝업 설명2</p>
					</a>
						<div id = "detail_box">${sessionScope.moveProduct.p_festa}</div>
				</div>
				</c:when>
				<c:otherwise>
					<h3 class = "text_title">상품을 선택하지 않았습니다.</h3>
					<hr>
					<span class = "text_title" style="font-size: 18px; color:#8CD790; display: inline-block; width: 120px; height: 100px; margin-left: 50px;">
					 당신의 여행을<br>
					 만들어보세요.</span>
					<img src = "img/welcomeman.JPG" style="width: 100px; height: 140px; float: right; display: inline-block;">
				</c:otherwise>
			</c:choose>	
		</div>
		
		
		
		<div id = "festa_place">
			<div id = "festa_title">관련 키워드</div>
				<c:forEach items="${keyWorldList}" var ="keyDto">	
					<div class = "key_div">
						<a href="${keyDto.k_url}" class ="festa_key">${keyDto.k_world1}</a>
					</div>
				</c:forEach>
		</div>


		<div id = "rooms_exam">
			<div class = "img_box">
			<div id ="present_label">
				best_room
			<a	href ="RoomSearchAction#right_position" id = "all_rooms"  name ="rooms_all_a">[전체 숙소 보기← click!]</a>
			</div>
			<c:forEach items="${BestRoomsList}" var ="bestRoomDto">	
				<div class="pdt_item">
					<a id = "pdt_a" href="${bestRoomDto.r_url}">
						<div class="wrap" style="position:relative;">
			 				<div class="tile" style="position:relative;">
			 					<div class="text" >
								  <h4>${bestRoomDto.r_kinds}</h4>
								  <p class="animate-text">
								  	${bestRoomDto.r_name}
								  </p>
								  <p class="animate-text">
								  	지역 : ${bestRoomDto.r_location}
								  </p>
		 					 	</div>
								<img id = "product_img" src ="img/${bestRoomDto.r_img}" alt ="" >
	  						</div>
	 					</div>
					</a>
				</div>
			</c:forEach>
			</div>
		</div>
		
	<div id = "right_position">
	
		<div id = "right_position_title">
			<h1>Rooms for your Travel</h1>
		</div>
		
			<c:forEach items="${RoomsList}" var ="roomDto">
				<div id ="right_position_img">
						<a href ="${roomDto.r_url}" id = "right_position_img_a">
							<img src ="img/${roomDto.r_img}" style = "width: 100%; height: 100%; position: relative;">
								<div id = "right_position_text">
									<span id = "right_position_text_subject">${roomDto.r_name}</span>
									<span id = "right_position_text_document">${roomDto.r_location} , ${roomDto.r_kinds} ,  ${roomDto.r_details}</span>
								</div>
						</a>
				</div>
			</c:forEach>
			<div id ="right_position_close">
				<a href ="RoomSearchAction#rooms_exam" id ="close_button" name="right_position_a_close"><img src ="img/close.JPG" style ="width: 44px; height: 44px; border-radius: 100%;"></a>
			</div>
	</div>
	
	<div id = "left_position">
		<nav>
		  <div class="menu-item"  name ="menu_item">
		    <c:choose>
				<c:when test="${empty sessionScope.loginUser}">
					<h4><a href="#"  data-needpopup-show="#small-popup" id ="modal_login">로그인하기</a></h4>
						<!-- 모달페이지 -->
							<div class="wrapper" style="display: none">
								<div id='small-popup' class="needpopup">
								<div id = "main_container">
									<div id ="join_mass">
												<span>Welcome !! <img src="img/realfoot.JPG" width = "40px" height = "40px;"></span>
										</div>
										<div id = "login_ad">
												<h3>여행을 좋아하는 사람들을 위한</h3>
												<h5>여행정보 검색 사이트</h5>
												<h4 id = "hwagae">화 개 장 터 ★</h4>
										</div>
								
										<form action="loginAction" name="Login_Form" method="post"  onReset="clearForm()" id = "form_id">
											<div id ="input_id">
													<div id = "input_joinUs">
														<label  for="loginid"> 아이디 </label>
															<input type="text" id="add1" name="memid" size ="30" maxlength="30" placeholder="ID">
														<span id = "wrong_id">아이디 혹은 비밀번호가 맞지 않습니다.</span>
														<span id ="id_error"></span>
													</div>
														<br>
														<br>
													
													<div id = "input_joinUs">
														<label for="loginpw"> 비밀번호 </label>
															<input type="password" id="add2" name="mempw" size ="30" maxlength="30" placeholder="PW">
														<span id ="pw_error"></span>
													</div>
														<br>
														<br>
														<%-- <% String uri = request.getRequestURI(); 
															 String ctx = request.getContextPath();
															 String command = uri.substring(ctx.length());
														%>
														<input type="hidden" name ="uri" value = <%=command%>> --%>
													<div id = "input_button">
														<a href="#"  id = "trans_data" >
															<img src = "img/signup.JPG"  style ="width:120px; height:70px;">
														</a>
													</div>
											</div>
									</form>
								</div>
							</div>
						</div>	
						<script src="js/jquery-3.2.1.js"></script>
						<script src="js/needpopup.min.js"></script>
							<script>  
								needPopup.config.custom = {
									'removerPlace': 'outside',
									'closeOnOutside': false,
									onShow: function() {
										console.log('needPopup is shown');
									},
									onHide: function() {
										console.log('needPopup is hidden');
									}
								};
								needPopup.init();
							</script>	
						<!-- 모달 페이지 끝 -->
								
				      <ul style="overflow: auto;">
				        <li><a href="#">아이디/비밀번호 찾기</a></li>
				        <li><a href="Contract.jsp">회원가입</a></li>
				      </ul>
		       </c:when>
		       <c:otherwise>
		       		<h4 style = "color: #f26d5b; overflow: hidden">${sessionScope.loginUser.p_id}(${sessionScope.loginUser.p_name}) 님</h4>
				      <ul style="overflow: auto;">
				        <li><a href="memberUpdate">내정보(수정)</a></li>
				        <li><a href="#">장바구니</a></li>
				        <li><a href="#">즐겨찾기</a></li>
				        <li><a href="#">최근검색자료</a></li>
				        <li><a href="#">주문내역</a></li>
				        <li><a href="LogoutAction">로그아웃</a></li>
				      </ul>
		       </c:otherwise>
		    </c:choose>
		    </div>
		      
		    <div class="menu-item">
		      <h4><a href="#">여행조건 검색</a></h4>
		      <ul>
		        <li><a href="#">성수기/비수기</a></li>
		        <li><a href="#">축제검색</a></li>
		        <li><a href="#">날씨검색</a></li>
		      </ul>
		    </div>
		      
		    <div class="menu-item">
		      <h4><a href="#">교통편 검색</a></h4>
		      <ul>
		        <li><a href="#">버스</a></li>
		        <li><a href="#">기차</a></li>
		        <li><a href="#">자차</a></li>
		      </ul>
		    </div>
		    
		    <div class="menu-item">
		      <h4><a href="#">숙박홍보사이트</a></h4>
		      <ul>
		        <li><a href="#">야놀자</a></li>
		        <li><a href="#">너놀자</a></li>
		        <li><a href="#">놀아라</a></li>
		      </ul>
		    </div>
		    
		    <div class="menu-item">
		      <h4><a href="#">특가/이벤트</a></h4>
		      <ul>
		        <li><a href="#">특가상품</a></li>
		        <li><a href="#">이벤트상품</a></li>
		        <li><a href="#">한정상품</a></li>
		      </ul>
		    </div>
		    
		</nav>
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
  <script type="text/javascript">
	window.onload = function(){
		var code= ${code};
		if(code == "4" ){
			document.getElementById('wrong_id').style.display="none";
		} else if(code =="2"){
			$("#modal_login").trigger('click');
			document.getElementById('wrong_id').style.display="inline-block";
		}
	};
	</script>
</html>