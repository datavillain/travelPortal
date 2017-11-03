<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/needpopup.min.css">
		<style>
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);
			.wrapper {
				width: 150px;
				height: 80px;
			}

			a[data-needpopup-show] {
				display: inline-block;
				margin: 0 10px 10px 0;
				padding: 10px 15px;
				font-weight: bold;
				letter-spacing: 1px;
				text-decoration: none;
				color: #fff;
				background: #7B5207;
			  border-radius: 3px;
			  box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.2);
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

			.needpopup p {
				margin: 0;
			}
			.needpopup p + p {
				margin-top: 10px;
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
<script type="text/javascript">
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
	<body>
		<div class="wrapper">
			<a href="#" data-needpopup-show="#small-popup">Show small popup</a>

	<!-- 모달페이지 -->
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
		

		<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
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
	</body>
</html>