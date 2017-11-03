<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 수정</title>
<link href="css/JoinMember.css" rel="stylesheet" >
	<style type="text/css">
	
		#join_header {
			display: block;
			height: 130px;
		}
		
		#main_container{
			width: 680px;
			margin: 0 auto;
			height: 700px;
		}
		
		
		
		#join_mass {
			width: 680px;
			height: 130px;
			text-align: left;
			line-height: 130px;
			margin-bottom: 5px;
			text-align: center;
		}
		
		#join_mass span {
			font-family: 'Jeju Hallasan', serif;
			font-size: 40px;
			line-height: 130px;
			text-align: center;
		}
		
		
		#input_id {
			width: 350px;
			height: 900px;
			margin: 0 auto;
			box-sizing: border-box;
		}
		
		
		#input_id label {
			display: inline-block;
			font-family: 'Jeju Hallasan', serif;
			margin-bottom: 7px;
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
			height: 45px;
			border-bottom: solid thin silver;
		}
		
		#input_joinUs > input {
			width: 345px;
			height: 15px;
			line-height: 15px;
			border-style: none;
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
		
		#input_zip {
			display: inline-block;
			width: 250px;
			height: 45px;
			border-bottom: solid thin silver;
			position: relative;
		}
		
		#sample6_postcode {
			width: 250px;
			height: 15px;
			line-height: 15px;
			border-style: none;
		}
		
		#search_zip {
			font-family: 'Jeju Hallasan', serif;
			position: absolute;
			top: 0px;
			right: 0px;
			border-radius: 5px;
			height: 25px;
		}
		
		
	</style>
	<script src="js/jquery-3.2.1.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#add3").blur(function(){
				if($("#add2").val() != $("#add3").val()){
					$("#pwch_error").css("display","block");
					$("#pwch_error").empty().append("비밀번호가 다릅니다.").css("color","red");
					$("#pwch_error").css("font-size","12px");
				} else if($("#add3").val() == null){
					$("#pwch_error").css("display","block");
					$("#pwch_error").empty().append("비밀번호를 확인하세요.").css("color","red");
					$("#pwch_error").css("font-size","12px");
				} else {
					$("#pwch_error").empty();
				}
			});
		});
		
		function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullAddr = ''; // 최종 주소 변수
	                var extraAddr = ''; // 조합형 주소 변수

	                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    fullAddr = data.roadAddress;

	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    fullAddr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	                if(data.userSelectedType === 'R'){
	                    //법정동명이 있을 경우 추가한다.
	                    if(data.bname !== ''){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있을 경우 추가한다.
	                    if(data.buildingName !== ''){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('sample6_address').value = fullAddr;

	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById('sample6_address2').focus();
	            }
	        }).open();
	    }	
		
		$(document).on("click","#trans_data",function(){
			  var re_id = /^[a-z0-9_-]{3,16}$/; // 아이디 검사식
			  var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
			  var re_email = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
			  /* var re_url = /^(https?:\/\/)?([a-z\d\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?$/; // URL 검사식 */
			  var re_tel = /^[0-9]{8,11}$/; // 전화번호 검사식
			
				var 
				form = $("#Form_id"),
				uid = $("#add1"),
				upw = $("#add2"),
				upwch = $("#add3"),
				uname = $("#add4"),
				uphone = $("#add5");
				uemail = $("#add6");
				uzip = $("#add7");
				uaddr = $("#add8");
				
				var id = $.trim(uid.val());
				var pw = $.trim(upw.val());
				var pwch = $.trim(upwch.val());
				var name = $.trim(uname.val());
				var phone = $.trim(uphone.val());
				var email = $.trim(uemail.val());
				var zip = $.trim(uzip.val());
				var addr = $.trim(uaddr.val());

				if(pw == ""){
					upw.focus();
					$("#pw_error").empty().append("PW를 입력해주세요.").css("color","red");
					$("#pw_error").css("font-size","12px");
					return false;
				} else if(!re_pw.test(pw)){
					upw.focus();
					$("#pw_error").empty().append("PW입력이 불가능합니다.").css("color","orange");
					$("#pw_error").css("font-size","12px");
					return false;
				} else {
					$("#pw_error").empty();
				}
				
				
				if(pwch == ""){
					upwch.focus();
					var str = "PW를 확인하세요.";
					$("#pwch_error").empty().append(str).css("color","red");
					$("#pwch_error").css("font-size","12px");
					return false;
				} else if(pw != pwch){
					var str = "PW가 다릅니다.";
					$("#pwch_error").empty().append(str).css("color","red");
					$("#pwch_error").css("font-size","12px");
					return false;
				} else {
					$("#pwch_error").empty();
				}
				
				if(name == ""){
					uname.focus();
					var str = "공백이름은 수정 불가합니다.";
					$("#name_error").empty().append(str).css("color","red");
					$("#name_error").css("font-size","12px");
					return false;
				} else {
					$("#name_error").empty();
				}
				
				if(phone == ""){
					uphone.focus();
					var str = "전화번호를 입력해주세요.";
					$("#phone_error").empty().append(str).css("color","red");
					$("#phone_error").css("font-size","12px");
					return false;
				} else if(!re_tel.test(phone)){
					uphone.focus();
					var str = "올바른 전화번호를 입력하세요";
					$("#phone_error").empty().append(str).css("color","red");
					$("#phone_error").css("font-size","12px");
					return false;
				} else {
					$("#phone_error").empty();
				}
				
				
				if(email == ""){
					uemail.focus();
					var str = "메일주소를 입력해주세요.";
					$("#email_error").empty().append(str).css("color","red");
					$("#email_error").css("font-size","12px");
					return false;
				} else if(!re_email.test(email)){
					uemail.focus();
					var str = "올바른 메일주소를 입력하세요.";
					$("#email_error").empty().append(str).css("color","red");
					$("#email_error").css("font-size","12px");
					return false;
				} else {
					$("#eamil_error").empty();
				}
				form.submit();
		});
		
	</script>
</head>
<body>

	<header>
		<%@ include file="includeHead.jsp"  %>
	</header>
	<div id = "main_container">
		<div id ="join_mass">
			<span>회원정보 수정 <img src="img/realfoot.JPG" width = "40px" height = "40px;"></span>
		</div>
		
		<div>
				<form action="memberUpdate" name="FormEmp" method="post"  onReset="clearForm()" id = "Form_id">
					<div id ="input_id">
							<div id = "input_joinUs" >
								<label  for="add1"> 아이디 </label>
									<input type="text" id="add1" name="memid" size ="30" maxlength="30" placeholder= "ID" value ="${sessionScope.loginUser.p_id}"  readonly>
								</div>
							<span id ="id_error"></span>
							<br>
							<br>
							<div id = "input_joinUs">
								<label for="add2"> 비밀번호 </label>
									<input type="password" id="add2" name="mempw" size ="30" maxlength="30" placeholder="Password" value ="${sessionScope.loginUser.p_pw}"  >
							</div>
								<span id ="pw_error"></span>
							<br>
							<br>
							<div id = "input_joinUs" >
								<label  for="add3"> 비밀번호 확인 </label>
									<input type="password" id="add3" name="emppwchek" size ="30" maxlength="30" placeholder="PwCheck">
							</div>
								<span id ="pwch_error"></span>
							<br>
							<br>
							<div id = "input_joinUs">
								<label for="add4"> 이름 </label>
									<input type="text" id="add4" name="memname" size ="30" maxlength="30" placeholder="NAME" value = "${sessionScope.loginUser.p_name}" >
							</div>
								<span id ="name_error"></span>
							<br>
							<br>
							<div id = "input_joinUs" >
								<label for="add5"> 휴대폰 번호 </label>
									<input type="text" id="add5" name="memphone" size ="30" maxlength="30" placeholder= "PHONE" value ="${sessionScope.loginUser.p_phone}" >
							</div>
								<span id ="phone_error"></span>
							<br>
							<br>
							<div id = "input_joinUs">
								<label for="add6"> email </label>
									<input type="text" id="add6" name="mememail" size ="30" maxlength="30" placeholder= "EMAIL" value ="${sessionScope.loginUser.p_email}" >
							</div>
								<span id ="email_error"></span>
							<br>
							<br>
						<div id = "input_zip">
							<label for="sample6_postcode"> 우편번호 </label>
							<input type="text" id="sample6_postcode" placeholder="우편번호" name="memzip" value ="${sessionScope.loginUser.p_zip}" >
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id ="search_zip"><br>
						</div>
						<br>
						<br>
						<span id = "zip_error"></span>
						<br>
						<div id = "input_joinUs">
							<label for="sample6_address"> 주소 </label>
							<input type="text" id="sample6_address" placeholder="주소" name="memaddr1" value ="${sessionScope.loginUser.p_addr1}">
						</div>
						<br>
						<br>
						<div id = "input_joinUs">
							<label for="sample6_address2"> 상세주소 </label>
							<input type="text" id="sample6_address2" placeholder="상세주소" name ="memaddr2" value ="${sessionScope.loginUser.p_addr2}">
						</div>
						<br>
						<span id = "addr_error"></span>
					</div>
				<div id = "input_button">
						<a href="#"  id = "trans_data" >
							<img src = "img/signup.JPG"  style ="width:120px; height:70px;">
						</a>
				</div>
		</form>
		
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
		</div>
	</div>
</body>
</html>