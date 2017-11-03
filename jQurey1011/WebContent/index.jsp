<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행정보 검색 포털 화개장터</title>
<link href="css/JoinMember.css" rel="stylesheet" >
	<style type="text/css">
		body {
			margin: 0px;
			padding: 0px;
		}
	
		div {
			margin: 0px;
			padding: 0px;
		}
		
		.product_name > h3 {
			clear: both;
			color: #1ec0ff;
		}
	
		#product_img {
			width: 200px;
			height: 130px;
			border-radius: 10px;
		}
		
		#pdt_a  {
			font-family: 'Jeju Hallasan', serif;
			text-decoration: none;
			color: #F68657;
		}
		
		#dropSpace {
			width: 100%;
			height: 110px;
			display: block;
		}
		
		.pdt_item {
			display: inline-block;
			width: 200px;
			height: 150px;
			margin: 0px 10px;
		}
		
		.item_list {
			height: 380px;
			margin-bottom: 20px;
		}
		
		.wrap {
		  margin:5px auto 0 auto;
		  width:200px;
		  display:flex;
		  align-items:space-around;
		  max-width:500px;
		  float: left;
		}
		
		.tile {
		  width:200px;
		  height:130px;
	 	  margin:0 auto; 
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
		  color: #c03546;
		  font-size: 18px;
		}
		
		.tile p {
		  font-weight:300;
		  margin:20px 0 0 0;
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
		    width:400px;
		  }
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
				
		.img_box {
			border: solid 3px silver;
			border-radius: 10px;
			width: 900px;
			height: 300px;
			margin: 0px auto;
			padding: 10px 10px 10px 10px;
		}
		
		.product_name {
			width: 926px;
			height: 30px;
			margin: 0px auto;
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
	
	<div class = "item_list">
		<div class = "product_name">
		<h3>커플여행지옥 솔로여행 천국</h3>
		*^^* 화이팅 입니다!!! 아자아자 간바레~~!!
		</div>
			<div class = "img_box">
			<c:forEach items="${placeList}" var ="bpDto">		
				<div class="pdt_item">
					<a id = "pdt_a" href="RoomSearchAction?indexData=${bpDto.p_name}">
						<div class="wrap" style="position:relative;">
			 				<div class="tile" style="position:relative;">
			 					<div class="text" >
								  <h4>${bpDto.p_name}</h4>
								  <p class="animate-text" style="font-size: 12px">
								  	예상 가격 : 
								 	 <fmt:setLocale value="ko_kr"/><!--  ko_kr,en_us,ja_jp -->
								 	 <fmt:formatNumber value ="${bpDto.p_price2}" type ="currency"/>
								  </p>
								  <p class="animate-text" style="font-size: 12px">
								  	볼거리 : ${bpDto.p_festa}
								  </p>
		 					 	</div>
								<img id = "product_img" src ="img/${bpDto.p_img}" alt ="" >
	  						</div>
	 					</div>
					</a>
				</div>
			</c:forEach>
			</div>
	</div>

	<div class = "item_list">
		<div class = "product_name">
		<h3>가족여행</h3>
		</div>
		<div class = "img_box">
			<c:forEach items="${familyList}" var ="fpDto">		
				<div class="pdt_item">
					<a id = "pdt_a" href="RoomSearchAction">
						<div class="wrap" style="position:relative;">
			 				<div class="tile" style="position:relative;">
			 					<div class="text">
								  <h4>${fpDto.p_name}</h4>
								  <p class="animate-text" style="font-size: 12px">
								  	예상 가격 : 
								 	 <fmt:setLocale value="ko_kr"/><!--  ko_kr,en_us,ja_jp -->
								 	 <fmt:formatNumber value ="${fpDto.p_price2}" type ="currency"/>
								  </p>
								  <p class="animate-text" style="font-size: 12px">
								  	볼거리 : ${fpDto.p_festa}
								  </p>
		 					 	</div>
								<img id = "product_img" src ="img/${fpDto.p_img}" alt ="">
	  						</div>
	 					</div>
					</a>
				</div>
			</c:forEach>
			</div>
	</div>	
		
		<div class = "item_list">	
			<div class = "product_name">
			<h3>베낭여행</h3>
			</div>
			<div class = "img_box">
			<c:forEach items="${packList}" var ="ppDto">		
				<div class="pdt_item">
					<a id = "pdt_a" href="RoomSearchAction">
						<div class="wrap" style="position:relative;">
			 				<div class="tile" style="position:relative;">
			 					<div class="text">
								  <h4>${ppDto.p_name}</h4>
								   <p class="animate-text" style="font-size: 12px">
								  	 예상 가격 : 
								 	 <fmt:setLocale value="ko_kr"/><!--  ko_kr,en_us,ja_jp -->
								 	 <fmt:formatNumber value ="${ppDto.p_price2}" type ="currency"/>
								  </p>
								  <p class="animate-text" style="font-size: 12px">
								  	볼거리 : ${ppDto.p_festa}
								  </p>
		 					 	</div>
								<img id = "product_img" src ="img/${ppDto.p_img}" alt ="">
	  						</div>
	 					</div>
					</a>
				</div>
			</c:forEach>
			</div>
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