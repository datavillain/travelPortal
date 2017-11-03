<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/JoinMember.css" rel="stylesheet" >
<style type="text/css">
	body, h1, ul, p, h3 {
		margin: 0px;
		padding: 0px;
	}
	
	
	
	.n_logo {
		display: block;
		width: 240px;
		height: 44px;
		background: url('img/pc_sp_join.png') 0 -106px;
		margin: 0 auto;
		box-sizing: border-box;
	}
	
	.lang {
		position: absolute;
		top: 14px;
		right: 0px;
	}
	
	
	
	#contract_container{
		width: 768px;
		margin: 0 auto;
		box-sizing: border-box;
		position: relative;
	}
	
	#join_content {
		width: 460px!important;
		margin: 0 auto!important;
	}
	
	.lang > select {
		background: url('img/sel_arr.gif') 100% 50% no-repeat;
		width: 98px;
		height: 30px;
		background-color: white;
		-webkit-appearance: none;
	}
	
	.terms {
		margin-bottom: 20px;
		background-color: white;
		border: 1px solid #dadada;
	}
	
	.terms_p {
		display: block;
		padding: 15px;
		margin: 0px;
		position: relative;
	}
	
	.terms_span {
		position: relative;
		display: block;
		height: 58px;
	}
	
	.terms_span > input {
		position: absolute;
		right: 1px;
		top: 50%;
		width: 22px;
		height: 22px;
		margin-top: -11px;
		visibility: hidden;
	}
	
	.terms_span > label {
		background: url('img/check_off.gif') 100% 50% no-repeat;
		display: block;
		line-height: 20px;
		height: 58px;
		top: -1px;
		font-size: 14px;
		font-weight: 700;
	}
	
	.terms_span > input:checked +label {
		background-image: url('img/check_on.gif');
	}
	
	#terms_ul {
		padding-bottom: 7px;
		list-style: none;
	}
	
	#terms_ul_li1 {
		border-top: 1px solid #f0f0f0;
	}
	
	#terms_ul > li {
		display: block;
		padding: 13px 15px 17px;		
	}
	
	.ul_li_span {
		position: relative;
		display: block;
		height: 24px;
	}
	
	.label1 {
		height: 24px;
		font-size: 14px;
		font-weight: 700;
		line-height: 24px;
		position: absolute;
		color: #333;
		top: 0px;
		left: 0px;
		width: 100%;
	}
	
	.span_only {
		color: #0d9900;
		font-size: 12px;
		font-weight: 400;
	}
	
	.span_select {
		color: #969696;
		font-size: 12px;
		font-weight: 400;
	}
	
	.ul_li_span > input {
		visibility: hidden;
		position: absolute;
		right: 1px;
		width: 22px;
		height: 22px;
		top: 50%;
		margin-top: -11px;
	}
	
	.ul_li_span > label {
		background: url('img/check_off.gif') 100% 50% no-repeat;
		display: block;
	}
	
	.ul_li_span > input:checked +label {
		background-image: url('img/check_on.gif');
	}
	
	.terms_box {
		position: relative;
		box-sizing: border-box;
		height: 88px;
		margin-top: 11px;
		padding: 8px 10px;
		border: 1px solid #f0f0f0;
		overflow: auto;
	}
	
	.article {
		margin-top: 0px;
	}
	
	.article_title {
		font-size: 12px;
		font-weight: 700;
		line-height: 15px;
		color: #666;
	}
	
	.article > p {
		display: block;
		font-size: 12px;
		line-height: 16px;
		color: #666;
	}
	
	.btn_double_area {
		margin: 30px -5px 0px;
		overflow: hidden;
	}

	.btn_double_area > span {
		display: block;
		float: left;
		width: 50%;
	}
	
	.btn_type {
		width: auto;
		margin: 0px 5px;
		font-size: 20px;
		font-weight: 600;
		line-height: 61px;
		display: block;
		box-sizing: border-box;
		height: 61px;
		padding-top: 1px;
		text-align: center;
	}
	
	a {
		text-decoration: none;
		color: inherit;
	}
	
	.btn_default {
		color: #333;
		border: 1px solid #e7e7e7;
		background-color: #fff;
	}
	
	.btn_agree {
		color: #EC7357;
		border: 1px solid #FBFFB9;
		background-color: #FDD692;
	}
	
	.group_join {
		margin: 20px 0px 65px;
		text-align: center;
		color: #666;
		font-size: 12px;
	}
	
	.group_join > a {
		text-decoration: underline;
		color: #333;
		font-size: 12px;
	}
	
			#footer {
			padding: 15px 0;
		}
		
		#footer > ul {
			margin: 0 auto 9px;
			text-align: center;
		}
		
		#footer * {
			font-size: 11px;
			line-height: normal;
			list-style: non;
			color: #333;
		}
		
		#footer > ul > li {
			display: inline;
			border-left: 1px solid #dadada;
			padding: 0 5px 0 7px;
		}
		
		#footer > ul > li a:HOVER {
			text-decoration: underline;
			color: #1fbc02;
		}
		
		#footer > ul > li:first_child {
			border-left: 0px!important;
		}
	
		#addr_logo {
			width: 63px;
			height: 11px;
		}
		
		#adress {
			margin: 0px auto;
			text-align: center;
		}
		
		#adress * {
			font: 9px verdana;
		}
		
		#adress a {
			font-weight: bold;'
		}
		
		#adress a:HOVER {
			text-decoration: underline;
			color: #1fbc02;
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
		
		
		
		$("#cbox").click(function(){
			var cVal = $('input:checkbox[id="cbox"]').is(":checked");
			if(cVal == true){
					$('input:checkbox[id="li1box"]').prop("checked",true);
					$('input:checkbox[id="li2box"]').prop("checked",true);
					$('input:checkbox[id="li3box"]').prop("checked",true);
					$('input:checkbox[id="li4box"]').prop("checked",true);
			} else if (cVal == false){
					$('input:checkbox[id="li1box"]').prop("checked",false);
					$('input:checkbox[id="li2box"]').prop("checked",false);
					$('input:checkbox[id="li3box"]').prop("checked",false);
					$('input:checkbox[id="li4box"]').prop("checked",false);
			}
		});
		
	});
		
		
		
	
   	$(document).on("click","#agree_button",function() {
		var
		form = $("#join_content"),
		ch1 = $('input:checkbox[id="li1box"]').is(":checked"),
		ch2 = $('input:checkbox[id="li2box"]').is(":checked");
		
		
 		if(ch1 != true || ch2 != true ) {
			var str = "네이버 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.";
			$("#agree_error").empty().append(str).css("color","red");
			$("#agree_error").css("font-size","12px");
			return false;
		} 
	 		$('input:checkbox[id="cbox"]').prop("checked",false);
	 		$('input:checkbox[id="li1box"]').prop("checked",false);
			$('input:checkbox[id="li2box"]').prop("checked",false);
			$('input:checkbox[id="li3box"]').prop("checked",false);
			$('input:checkbox[id="li4box"]').prop("checked",false);
		form.submit();
	});  
	 
	
	
</script>
</head>
<body>
	<div class = "fixed_menu">
			<%@ include file="includeHead.jsp"  %>
	</div>	
	<div id = "dropSpace">
	</div>
	
	<div id = "contract_container">
		<form id = "join_content" action = "Join.jsp" >
			<div class = "terms">
				<p class = "terms_p">			
					<span class ="terms_span">
						<input type="checkbox" id ="cbox" onclick ="allChecked()">
						<label for ="cbox">
							이용약관, 개인정보 수집 및 이용,<br>
							위치정보 이용약관(선택), 프로모션 안내<br>
							메일 수신(선택)에 모두 동의합니다.
						</label>
					</span>
				</p>
				<ul id ="terms_ul">
					<li id = "terms_ul_li1">
						<span class = "ul_li_span">
							<input type ="checkbox" id ="li1box">
							<label for="li1box" class="label1">
								홈페잊 이용약관 동의<span class="span_only">(필수)</span>
							</label>
						</span>	
							<div class = "terms_box">
								<div class= "article">
									<h3 class ="article_title">제 1 조 (목적)</h3>
										<p>이 약관은 네이버 주식회사 ("회사" 또는 "네이버")가 제공하는 네이버<br>
											및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, <br>
											의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
								
									<h3 class ="article_title">제 2 조 (정의)</h3>
										<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
											①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 네이버 및 네이버 관련 제반 서비스를 의미합니다.<br>
											②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.<br>
											③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.<br>
											④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.<br>
											⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.<br>
											⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.<br>
											⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.</p>
								</div>
							</div>
					</li>
					
					
					<li id = "terms_ul_li2">
						<span class = "ul_li_span">
							<input type ="checkbox" id ="li2box">
							<label for="li2box" class="label1">
								개인정보 수집 및 이용에 대한 안내<span class="span_only">(필수)</span>
							</label>
						</span>	
							<div class = "terms_box">
								<div class ="article">
									<p>정보통신망법 규정에 따라 네이버에 회원가입 신청하시는 분께 수집하<br>
									 	는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및<br>
									 	이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.</p>
							
								<h3 class ="article_title">1. 수집하는 개인정보</h3>
									<p>이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네<br>
										이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘<br>
										린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위<br>
										해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 <br>
										개인정보를 수집합니다.</p>
								</div>
							</div>
					</li>
					
					
					<li id = "terms_ul_li3">
						<span class = "ul_li_span">
							<input type ="checkbox" id ="li3box">
							<label for="li3box" class="label1">
								위치정보 이용약관 동의<span class="span_select">(선택)</span>
							</label>
						</span>	
							<div class = "terms_box">
								<div class ="article">
									<p>위치정보 이용약관에 동의하시면, <srtong>위치를 활용한 광고 정보 수신</srtong> 등을<br>
										포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.</p>
							
								<h3 class ="article_title">제 1 조 (목적)</h3>
									<p>이 약관은 네이버 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 <br>
									위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의<br>
									무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
								</div>
							</div>
					</li>
					
					<li id = "terms_ul_li4">
						<span class = "ul_li_span">
							<input type ="checkbox" id ="li4box">
							<label for="li4box" class="label1">
								이벤트 등 프로모션 알림 메일 수신<span class="span_select">(선택)</span>
							</label>
						</span>
						<span id ="agree_error"></span>	
					</li>
				</ul>
			</div>
			
			<div class = "btn_double_area">
				<span><a href="#" class ="btn_type btn_default">비동의</a></span>
				<span><a href="#" class ="btn_type btn_agree"  id ="agree_button">동의</a></span>
			</div>
				
			</form>
			<div class ="group_join">
				회사, 동아리 등 단체에서 사용할 ID가 필요하세요? <a href="#">단체 회원 가입</a>
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