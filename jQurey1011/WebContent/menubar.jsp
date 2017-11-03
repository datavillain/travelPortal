<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/needpopup.min.css">
<style rel="stylesheet">
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);

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
				display: inline-block;
				width: 200px;
				height: 32px;
				line-height: 32px;
				text-align: center;
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

		<nav>
		  <div class="menu-item"  name ="menu_item">
		    <c:choose>
				<c:when test="${empty sessionScope.loginUser}">
		<div class="wrapper">
						<a href="#" data-needpopup-show="#small-popup" id ="modal_login"> 로그인하기</a>
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
									<% String uri = request.getRequestURI(); 
										 String ctx = request.getContextPath();
										 String command = uri.substring(ctx.length());
									%>
									<input type="hidden" name ="uri" value = <%=command%>>
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

				
		

</body>
</html>
