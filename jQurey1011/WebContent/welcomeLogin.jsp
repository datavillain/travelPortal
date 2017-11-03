<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
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
	
		#join_header {
			display: block;
			height: 130px;
		}
		
		#main_container{
			width: 680px;
			height: 500px;
			margin: 0 auto;
		}
	
		#join_mass {
			width: 680px;
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
	
		#footer_place {
			margin: 10px auto;
			height: 30px;
			line-height: 30px;	
		}
	
		#input_id {
			width: 680px;
			height: 300px;
			margin: 10px auto;
			box-sizing: border-box;
		}
		
		#input_id input{
			border: none;
		}
		
		#input_user input{
			border: none;
		}
		
		#input_user {
			width: 680px;
			height: 130px;
		}
		
		
		#input_id label {
			display: inline-block;
			font-family: 'Jeju Hallasan', serif;
			margin-bottom: 3px;
			width: 345px;
		}
		
		#input_button {
			width: 680px;
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
		
		
		
		#login_ad{
			font-family: 'Jeju Hallasan', serif;
			height: 100px;
			text-align: center;
		}	
	
		#hwagae {
			color: #F68657;
		}
	
		#wrong_id {
			display: none;
			font-size: 12px;
			color: orange;
			margin-top: 15px;
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
			$("#add1").focus(function(){
				$("#wrong_id").css("display","none");
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
   <script type="text/javascript">
	window.onload = function(){
		var code= ${code};
		if(code == "1" ){
			alert("회원가입이 성공했습니다. 로그인 하세요.");
		} else if (code == "2"){
			alert("아이디 또는 비밀번호를 확인해주세요.");
			document.getElementById('wrong_id').style.display="inline-block";
		} else if (code == "3"){
			alert("로그인이 필요한 서비스 입니다.");
		}
	};
	</script>
</head>
<body>
	<header>
		<div class = "fixed_menu">
			<%@ include file="includeHead.jsp"  %>
		</div>	
	</header>
	
	<div id = "main_container">
		<div id ="join_mass">
			<span>Welcome !! <img src="img/realfoot.JPG" width = "40px" height = "40px;"></span>
		</div>
		<div id = "login_ad">
			<h3>여행을 좋아하는 사람들을 위한</h3>
			<h5>여행정보 검색 사이트</h5>
			<h4 id = "hwagae">화 개 장 터 ★</h4>
		</div>
		<div>
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
						
						<div id = "input_button">
							<a href="#"  id = "trans_data" >
								<img src = "img/signup.JPG"  style ="width:120px; height:70px;">
							</a>
						</div>
			</div>
		</form>
				<div id="footer">
				<ul>
					<li><a href="Join.jsp">회원가입</a></li>
					<li><a href="#">아이디/비밀번호 찾기</a></li>
				</ul>
			</div>	
		</div>
	</div>
		<footer>
			<div id = "footer_place">
			<div id="footer">
				<ul>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보 처리방법</a></li>
					<li><a href="#">운영정책</a></li>
					<li><a href="#">공지사항</a></li>
				</ul>
			</div>	
			</div>
		</footer>
	
	
	
</body>
</html>